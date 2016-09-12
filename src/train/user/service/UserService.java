package train.user.service;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import train.user.dao.dao.UserMapper;
import train.user.dao.vo.User;
import train.util.MD5Util;
import train.util.SendEmail;
import train.util.ServiceException;

@Repository
public class UserService {
	@Autowired
	UserMapper umapper;

	public void insert(String email, String identify, HttpSession session) throws ServiceException {
		String safecode = (String)session.getAttribute("safecode");
		if(safecode.equals(identify)){
			User u = umapper.queryByEmail(email);
			if(u==null){
				u = new User();
				u.setEmail(email);
				u.setType(1);
				StringBuffer sb=new StringBuffer("点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");  
				sb.append("<a href=\"http://localhost:8080/train/user/activate?email=");  
				sb.append(u.getEmail());   
				sb.append("&validateCode=");   
				sb.append(MD5Util.encode2hex(u.getEmail()));  
				sb.append("\">http://localhost:8080/train/user/activate?email=");   
				sb.append(u.getEmail());  
				sb.append("&validateCode=");  
				sb.append(MD5Util.encode2hex(u.getEmail()));  
				sb.append("</a>");
				try {
					SendEmail.send(u.getEmail(), sb.toString());
					umapper.insert(u);
				} catch (AddressException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else{
				throw new ServiceException("账号已注册");
			}
		}else{
			throw new ServiceException("验证码错误");
		}
	}
	
	/** 
     * 处理激活 
     * @throws ParseException  
     */  
      ///传递激活码和email过来  
	@Transactional
    public User processActivate(String email , String validateCode)throws ServiceException{    
         //数据访问层，通过email获取用户信息  
        User user=umapper.queryByEmail(email);  
        //验证用户是否存在   
        if(user!=null) {    
            //验证用户激活状态    
            if(user.getType()==1) {   
                ///没激活  
                    //验证激活码是否正确    
                    if(validateCode.equals(MD5Util.encode2hex(user.getEmail()))) {    
                        //激活成功， //并更新用户的激活状态，为已激活   
                        user.setType(2);//把状态改为激活  
                        umapper.updateByEmail(user);
                        return user;
                    } else {    
                       throw new ServiceException("激活码不正确");    
                    }  
            } else {  
               throw new ServiceException("邮箱已激活，请登录！");    
            }    
        } else {  
            throw new ServiceException("该邮箱未注册（邮箱地址不存在）！");    
        }    
    }

	public void setPass(String pass, String repass, HttpSession session) throws ServiceException {
		if(pass!=null){
			if(pass.equals(repass)){
				User u = (User)session.getAttribute("user");
				u.setPass(pass);
				umapper.updateByEmail(u);
			}else{
				throw new ServiceException("密码不相同");
			}
		}else{
			throw new ServiceException("密码不能为空");
		}
	}

	public void login(String email, String password, HttpSession session) throws ServiceException {
		User u = umapper.queryByEmail(email);
		if(u!=null){
			if(u.getPass().equals(password)){
				session.setAttribute("user", u);
			}else{
				throw new ServiceException("密码错误");
			}
		}else{
			throw new ServiceException("该用户不存在");
		}
	} 
}
