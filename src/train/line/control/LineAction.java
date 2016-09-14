package train.line.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/user")
public class LineAction {
	@RequestMapping(value="/queryLine", method = RequestMethod.POST)
	public String queryLine(String fromName,String toName,String date){
		System.out.println(fromName);
		System.out.println(toName);
		System.out.println(date);
		return "trains.html";
	}
}
