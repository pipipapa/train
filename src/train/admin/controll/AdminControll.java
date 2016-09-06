package train.admin.controll;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import train.admin.service.AdminService;

@Controller
public class AdminControll {
	
	@Autowired
	AdminService adminService;

	@RequestMapping("/login")
	public ModelAndView QurryAll()
	{
		ModelAndView mv=new ModelAndView();
		System.out.println(adminService.QurryAll().get(0).getName());
		return mv;
	}
	
}
