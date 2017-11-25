package jpcc.controller;

import java.util.List;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jpcc.entity.Category;
import jpcc.entity.Product;
import jpcc.entity.Brand;
import jpcc.service.CategoryService;
import jpcc.service.ProductService;
import jpcc.service.BrandService;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	BrandService brandService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("list-by-brand/{id}")
	public String listByBrand(ModelMap model,
			@PathVariable("id") String id) {
		Brand brand = brandService.get(id);
		model.addAttribute("prods", brand.getProducts());
		return "user/product/list";
	}
	@RequestMapping("list-by-category/{id}")
	public String listByCategory(ModelMap model,
			@PathVariable("id") Integer id) {
		Category category = categoryService.get(id);
		model.addAttribute("prods", category.getProducts());
		return "user/product/list";
	}
	
	@RequestMapping("search")
	public String search(ModelMap model,
			@RequestParam("Keywords") String keywords) {
		List<Product> products = productService.search(keywords);
		model.addAttribute("prods", products);
		return "user/product/list";
	}

	@RequestMapping("detail/{id}")
	public String detail(ModelMap model,
			@PathVariable("id") Integer id) {
		Product product = productService.get(id);
		model.addAttribute("prod", product);
	
		Brand brand = brandService.get(product.getBrand().getId());
		model.addAttribute("sameBranItems", brand.getProducts());
		return "user/product/detail";
	}
}
