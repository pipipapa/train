package train.line.control;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import train.line.dao.vo.Line;
import train.line.service.LineService;
import train.station.dao.vo.Station;
import train.station.service.StationService;

@Controller
public class LineAction {
	
	@Autowired
	LineService service;
	
	@Autowired
	StationService stationservice;
	
	@RequestMapping(value="/user/queryLine", method = RequestMethod.POST)
	public String queryLine(String fromName,String toName,String date){
		System.out.println(fromName);
		System.out.println(toName);
		System.out.println(date);
		return "trains.html";
	}
	
	@RequestMapping("/admin/AddLine")
	public ModelAndView add(Line l)
	{
		ModelAndView mv=new ModelAndView();
		service.add(l);
		mv.setViewName("redirect:QueryLine");
		return mv;
	}
	
	@RequestMapping("admin/toAddLine")
	public ModelAndView toAdd()
	{
		ModelAndView mv=new ModelAndView();
		List<Station> slist=stationservice.QueryAll();
		mv.addObject("slist", slist);
		mv.setViewName("admin/AddLine0");
		
		return mv;
	}
	
	
	@RequestMapping("admin/QueryLine")
	public ModelAndView QueryAll()
	{
		ModelAndView mv=new ModelAndView();
		List<Line> llist=service.QueryAll();
		mv.addObject("llist", llist);
		mv.setViewName("/admin/QueryLine0");
		return mv;
	}
	
	@RequestMapping("admin/toUpdateLine")
	public ModelAndView toUpdate(int id)
	{
		ModelAndView mv=new ModelAndView();
		List<Station> slist=stationservice.QueryAll();
		Line l=service.QueryById(id);
		mv.addObject("slist", slist);
		mv.addObject("l", l);
		mv.setViewName("admin/UpdateLine0");
		return mv;
	}
	
	@RequestMapping("admin/UpdateLine")
	public ModelAndView Update(Line l)
	{
		ModelAndView mv=new ModelAndView();
		service.update(l);
		mv.setViewName("redirect:QueryLine");
		return mv;
	}
	
	@RequestMapping("admin/DeleteLine")
	public ModelAndView Delete(int id)
	{
		ModelAndView mv=new ModelAndView();
		service.delete(id);
		mv.setViewName("redirect:QueryLine");
		return mv;
	}
	
	@RequestMapping("admin/QueryByLineName")//根据名字查询站点的ID
	public void QueryByName(String sname,PrintWriter out)
	{
		Line l=service.QueryByName(sname);
		int lid=l.getId();
		out.print("{\"sid\":\""+lid+"\"}");
	}
	
	
	
	
}
