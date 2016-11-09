package train.user.service;

import java.util.List;

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

	public List<User> queryAll()
	{
		return umapper.queryAll();
	}
	
	public void insert(String email, String identify, HttpSession session) throws ServiceException {
		String safecode = (String)session.getAttribute("safecode");
		if(safecode.equals(identify)){
			User u = umapper.queryByEmail(email);
			if(u==null){
				u = new User();
				u.setEmail(email);
				u.setType(1);
				StringBuffer sb=new StringBuffer("����������Ӽ����˺ţ�48Сʱ��Ч����������ע���˺ţ�����ֻ��ʹ��һ�Σ��뾡�켤�</br>");  
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
				throw new ServiceException("�˺���ע��");
			}
		}else{
			throw new ServiceException("��֤�����");
		}
	}
	
	/** 
     * ������ 
     * @throws ParseException  
     */  
      ///���ݼ������email����  
	@Transactional
    public User processActivate(String email , String validateCode)throws ServiceException{    
         //���ݷ��ʲ㣬ͨ��email��ȡ�û���Ϣ  
        User user=umapper.queryByEmail(email);  
        //��֤�û��Ƿ����   
        if(user!=null) {    
            //��֤�û�����״̬    
            if(user.getType()==1) {   
                ///û����  
                    //��֤�������Ƿ���ȷ    
                    if(validateCode.equals(MD5Util.encode2hex(user.getEmail()))) {    
                        //����ɹ��� //�������û��ļ���״̬��Ϊ�Ѽ���   
                        user.setType(2);//��״̬��Ϊ����  
                        umapper.updateByEmail(user);
                        return user;
                    } else {    
                       throw new ServiceException("�����벻��ȷ");    
                    }  
            } else {  
               throw new ServiceException("�����Ѽ�����¼��");    
            }    
        } else {  
            throw new ServiceException("������δע�ᣨ�����ַ�����ڣ���");    
        }    
    }

	public void setPass(String pass, String repass, HttpSession session) throws ServiceException {
		if(pass!=null){
			if(pass.equals(repass)){
				User u = (User)session.getAttribute("user");
				u.setPass(pass);
				umapper.updateByEmail(u);
			}else{
				throw new ServiceException("���벻��ͬ");
			}
		}else{
			throw new ServiceException("���벻��Ϊ��");
		}
	}

	public void login(String email, String password, HttpSession session) throws ServiceException {
		User u = umapper.queryByEmail(email);
		if(u!=null){
			if(u.getPass().equals(password)){
				session.setAttribute("user", u);
			}else{
				throw new ServiceException("�������");
			}
		}else{
			throw new ServiceException("���û�������");
		}
	} 
}
