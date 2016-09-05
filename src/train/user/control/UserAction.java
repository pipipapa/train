package train.user.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import train.user.service.UserService;

@Controller
public class UserAction {
	@Autowired
	private UserService uService;
	
	@RequestMapping(value="/user")
	public void selectAll(){
		System.out.println(uService.selectAll().get(0).getId());
	}
}
