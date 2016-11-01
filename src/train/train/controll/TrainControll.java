package train.train.controll;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import train.line.dao.vo.Line;
import train.line.service.LineService;
import train.train.dao.vo.Train;
import train.train.service.TrainService;

@Controller
public class TrainControll {

	@Autowired
	TrainService service;
	
	@Autowired
	LineService lineservice;
	
	@RequestMapping("admin/QueryTrain")
	public ModelAndView QueryAll()
	{
		ModelAndView mv=new ModelAndView();
		List<Train> tlist=service.QueryAll();
		mv.addObject("tlist",tlist);
		mv.setViewName("admin/QueryTrain0");
		return mv;
	}
	
	@RequestMapping("admin/AddTrain")
	public ModelAndView Add(Train t)
	{
		ModelAndView mv=new ModelAndView();
		service.add(t);
		mv.setViewName("redirect:QueryTrain");
		return mv;
	}
	
	@RequestMapping("admin/toAddTrain")
	public ModelAndView toAdd()
	{
		ModelAndView mv=new ModelAndView();
		List<Line> llist=lineservice.QueryAll();
		mv.addObject("llist", llist);
		mv.setViewName("admin/AddTrain0");
		return mv;
	}
	
	@RequestMapping("admin/DeleteTrain")
	public ModelAndView delete(int id)
	{
		ModelAndView mv=new ModelAndView();
		service.delete(id);
		mv.setViewName("redirect:QueryTrain");
		return mv;
	}
	
	@RequestMapping("admin/UpdateTrain")
	public ModelAndView update(Train t)
	{
		ModelAndView mv=new ModelAndView();
		service.add(t);
		mv.setViewName("redirect:QueryTrain");
		return mv;
		
	}
	
	@RequestMapping("admin/toUpdateTrain")
	public ModelAndView QueryById(int id)
	{
		ModelAndView mv=new ModelAndView();
		Train t=service.QueryById(id);
		List<Line> llist=lineservice.QueryAll();
		mv.addObject("t", t);
		mv.addObject("llist", llist);
		mv.setViewName("admin/UpdateTrain0");
		return mv;
	}
	
}
