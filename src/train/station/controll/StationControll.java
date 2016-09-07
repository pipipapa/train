package train.station.controll;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.ResourceMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sun.swing.internal.plaf.metal.resources.metal;

import train.station.dao.vo.Station;
import train.station.service.StationService;

@Controller
public class StationControll {

	@Autowired
	StationService service;
	
	@RequestMapping("/admin/AddStation")
	public ModelAndView add(Station s)
	{
		ModelAndView mv=new ModelAndView();
		System.out.println(s.getTime());
		service.add(s);
		mv.setViewName("redirect:QueryStation");
		return mv;
	}
	
	@RequestMapping("admin/QueryStation")
	public ModelAndView QueryAll()
	{
		ModelAndView mv=new ModelAndView();
		List<Station> slist=service.QueryAll();
		System.out.println(slist.size());
		mv.addObject("slist", slist);
		mv.addObject("num", 5);
		mv.setViewName("/admin/QueryStation0");
		return mv;
	}
	
	@RequestMapping("admin/toUpdateStation")
	public ModelAndView toUpdate(int id)
	{
		ModelAndView mv=new ModelAndView();
		Station station=service.QueryById(id);
		mv.addObject("station", station);
		mv.setViewName("admin/UpdateStation0");
		return mv;
	}
	
	@ResourceMapping("admin/UpdateStation")
	public ModelAndView Update(Station s)
	{
		ModelAndView mv=new ModelAndView();
		service.update(s);
		mv.setViewName("redirect:admin/QueryStation");
		return mv;
	}
	
	@RequestMapping("admin/DeleteStation")
	public ModelAndView Delete(int id)
	{
		ModelAndView mv=new ModelAndView();
		service.delete(id);
		mv.setViewName("redirect:admin/QueryStation");
		return mv;
	}
}
