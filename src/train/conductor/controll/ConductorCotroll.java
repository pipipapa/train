package train.conductor.controll;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import train.conductor.dao.vo.Conductor;
import train.conductor.service.ConductorService;

@Controller
public class ConductorCotroll {

	@Autowired
	private ConductorService cservice;
	
	@RequestMapping("conductor/ConductorLogin")
	public String login(String name,String pass,HttpServletRequest request)
	{
		System.out.println(name);
		Conductor c=cservice.selectByName(name);
		System.out.println(c);
		if(c==null)
		{
			System.out.println("«Î÷ÿ–¬ ‰»Î’À∫≈£°");
			return "redirect:login1.html";
		}
		if(c!=null&&c.getPass().equals(pass))
		{
			request.getSession().setAttribute("conductor", c);
			return "redirect:index.html";
		}
		return null;
	}
}
