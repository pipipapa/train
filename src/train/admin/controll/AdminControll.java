package train.admin.controll;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import train.admin.dao.vo.Admin;
import train.admin.service.AdminService;

@Controller
public class AdminControll {
	
	@Autowired
	AdminService adminService;

	@RequestMapping("/QueryAll")
	public ModelAndView QurryAll()
	{
		ModelAndView mv=new ModelAndView();
		System.out.println(adminService.QueryAll().get(0).getName());
		return mv;
	}
	
	@RequestMapping("admin/AdminLogin")
	public ModelAndView login(String name,String pass)
	{
		ModelAndView mv=new ModelAndView();
		List<Admin> alist=adminService.QueryAll();
		if(name==null)
		{
			mv.setViewName("/login.html");
		}
		else
		{
			Integer num=null;
			for(int i=0;i<alist.size();i++)
			{
				if(name.equals(alist.get(i).getName()))
				{
					num=i;
					break;
				}
			}
			if(num==null)
			{
				System.out.println("没有该账号！！");
			}
			else if(pass.equals(alist.get(num).getPass()))
			{
				mv.setViewName("redirect:index.html");
			}
		}
		return mv;
	}
	
}
