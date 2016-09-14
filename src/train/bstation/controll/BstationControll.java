package train.bstation.controll;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.xpath.internal.operations.Mod;

import train.bstation.dao.vo.Bstation;
import train.bstation.service.BstationService;
import train.station.dao.vo.Station;
import train.station.service.StationService;

@Controller
public class BstationControll {
	
	@Autowired
	BstationService service;
	
	@Autowired
	StationService stationservice;
	
	@RequestMapping("admin/QueryBstation")
	public ModelAndView QueryAll()
	{
		ModelAndView mv=new ModelAndView();
		List<Bstation> blist=service.QueryAll();
		mv.addObject("blist", blist);
		mv.setViewName("admin/QueryBstation0");
		return mv;
	}
	
	@RequestMapping("admin/AddBstation")
	public ModelAndView add(Bstation b)
	{
		ModelAndView mv=new ModelAndView();
		service.add(b);
		mv.setViewName("redirect:QueryBstation");
		return mv;
	}
	
	@RequestMapping("admin/toAddBstation")
	public ModelAndView toAdd()
	{
		ModelAndView mv=new ModelAndView();
		List<Station> slist=stationservice.QueryAll();
		mv.addObject("slist", slist);
		mv.setViewName("admin/AddBstation0");
		
		return mv;
	}
	
	
	@RequestMapping("admin/DeleteBstation")
	public ModelAndView delete(int id)
	{
		ModelAndView mv=new ModelAndView();
		service.delete(id);
		mv.setViewName("redirect:QueryBstation");
		return mv;
	}
	
	@RequestMapping("admin/toUpdateBstation")
	public ModelAndView toUpdate(int id)
	{
		ModelAndView mv=new ModelAndView();
		Bstation b=service.QueryById(id);
		List<Station> slist=stationservice.QueryAll();
		mv.addObject("b", b);
		mv.addObject("slist", slist);
		mv.setViewName("admin/UpdateBstation0");
		return mv;
	}
	
	@RequestMapping("admin/UpdateBstaiton")
	public ModelAndView update(Bstation b)
	{
		ModelAndView mv=new ModelAndView();
		service.update(b);
		System.out.println(b.getNextstation()+"---"+b.getSelfstation());
		mv.setViewName("redirect:QueryBstation");
		return mv;
	}
	
	@RequestMapping("admin/QuerySelf")
	public ModelAndView QueryBySelf(int selfstation)
	{
		ModelAndView mv=new ModelAndView();
		List<Bstation> blist=service.QueryBySelf(selfstation);
		mv.addObject("blist", blist);
		mv.setViewName("");
		return mv;
	}
	
	@RequestMapping("admin/QueryNext")
	public ModelAndView QueryByNext(int nextstation)
	{
		ModelAndView mv=new ModelAndView();
		List<Bstation> blist=service.QueryByNext(nextstation);
		mv.addObject("blist", blist);
		mv.setViewName("");
		return mv;
	}
	
	
	
	
	
	
	
}
