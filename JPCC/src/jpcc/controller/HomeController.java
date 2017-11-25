package jpcc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


import jpcc.entity.Brand;
import jpcc.entity.Product;
import jpcc.service.BrandService;
import jpcc.service.ProductService;

@Controller
@RequestMapping("home")
public class HomeController {
	@Autowired
	BrandService brandService;
	@Autowired
	ProductService productService;
	@RequestMapping("index")
	public String index(ModelMap model) {
		List<Product> exp =  productService.getExpensiveItems();
		model.addAttribute("expensive",exp);
		Brand lex = brandService.getBrand("Lexus");
		Brand inf= brandService.getBrand("Infiniti");
		Brand acu = brandService.getBrand("Acura");
		model.addAttribute("lex",lex);
		model.addAttribute("inf",inf);
		model.addAttribute("acu",acu);
		return "home/index";
	}
	
	@RequestMapping("about")
	public String about() {
		return "user/home/about";
	}
	
	@RequestMapping("contact")
	public String contact() {
		return "user/home/contact";
	}
	
	
}
