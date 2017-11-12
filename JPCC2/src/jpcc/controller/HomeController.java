package jpcc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class HomeController {
	
	@RequestMapping("index")
	public String index() {
		return "user/home/index";
	}
	
	@RequestMapping("about")
	public String about() {
		return "user/home/about";
	}
	
	@RequestMapping("contact")
	public String contact() {
		return "user/home/contact";
	}
	
	@RequestMapping("feedback")
	public String feedback() {
		return "user/home/feedback";
	}
	
	@RequestMapping("faq")
	public String faq() {
		return "user/home/faq";
	}

}
