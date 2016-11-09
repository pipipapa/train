package train.user.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import train.user.dao.vo.User;
import train.user.service.UserService;
import train.util.ServiceException;

@Controller
public class UserAction {
	@Autowired
	private UserService uService;
	
	@RequestMapping(value="/user/isEmailAvailable")
	public ModelAndView isEmailAvailable(HttpServletResponse resp,String email,String identify,HttpSession session) throws IOException{
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		try {
			uService.insert(email,identify,session);
			out.print("<script language=\"javascript\">alert('ע��ɹ�����ǰ�����������֤');window.location.href='http://mail.qq.com'</script>");//
		} catch (ServiceException e) {
			out.print("<script language=\"javascript\">alert('"+e.getMessage()+"');window.location.href='register.html'</script>");//
		}
		return null;
	}
	
	@RequestMapping(value="/user/activate")
	public ModelAndView activate(String email,String validateCode, HttpServletResponse resp,ModelAndView mav, HttpSession session) throws IOException{
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		try {
			User u = uService.processActivate(email, validateCode);
			session.setAttribute("user", u);
			out.print("<script language=\"javascript\">window.location.href='register2.html'</script>");//
        } catch (ServiceException e) { 
        	out.print("<script language=\"javascript\">alert('"+e.getMessage()+"');window.location.href='register.html'</script>");//
        }
		return null;
	}
	
	@RequestMapping(value="/user/setPass")
	public void setPass(HttpServletResponse resp,String pass,String repass,HttpSession session) throws IOException{
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		try {
			uService.setPass(pass,repass,session);
			out.print("<script language=\"javascript\">window.location.href='register3.html'</script>");//
		} catch (ServiceException e) {
        	out.print("<script language=\"javascript\">alert('"+e.getMessage()+"');window.location.href='register2.html'</script>");//
		}
	}
	
	@RequestMapping(value="/user/dologin")
	public ModelAndView dologin(HttpServletResponse resp,String email,String password,HttpSession session) throws IOException{
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		try {
			uService.login(email,password,session);
			ModelAndView mav = new ModelAndView("/user/query");
			return mav;
		} catch (ServiceException e) {
        	out.print("<script language=\"javascript\">alert('"+e.getMessage()+"');window.location.href='login.html'</script>");//
		}
		return null;
	}
	
	@RequestMapping("conductor/QueryUser")
	public ModelAndView QueryUser()
	{
		ModelAndView mv=new ModelAndView();
		List<User> ulist=uService.queryAll();
		mv.addObject("ulist", ulist);
		mv.setViewName("conductor/QueryTraveller");
		return mv;
	}
	
}
