package com.poly.controller;

import java.math.BigDecimal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dto.ProductCardDTO;
import com.poly.entity.CategoryProduct;
import com.poly.entity.Product;
import com.poly.repository.ICategoryProductRepository;
import com.poly.service.impl.ProductCardService;
import com.poly.service.impl.ProductService;
import com.poly.service.impl.SizeService;

@Controller
public class DetailController {
	@Autowired
	private ProductService productService;

	@Autowired
	private SizeService sizeService;

	@Autowired
	HttpServletRequest request;

	@Autowired
	private ProductCardService productCardService;

	@Autowired
	private ICategoryProductRepository categoryProductRepository;

	@GetMapping("/details/{id}")
	private String getDetails(Model model, @PathVariable(name = "id") Long id,
			@RequestParam(name = "name") String name) {
		Product product = productService.findByIDAndName(id, name);
		if (product != null) {
			int count = product.getViewCount();
			count++;
			product.setViewCount(count);
			Product p = productService.save(product);
			if (p != null) {
				model.addAttribute("sizeList", sizeService.getName());
				model.addAttribute("product", product);
				return "details_component";
			}

		}
		return "category_component";
	}

	@PostMapping("/search")
	private String selectByProduct(@RequestParam(name = "keyword") String keyword, Model model) {
		request.setAttribute("productList", productService.selectByName("%" + keyword + "%"));
		model.addAttribute("categoryName", categoryProductRepository.selectByName());

		return "product_component";
	}

	@GetMapping("/search/the-loai")
	private String locCategory(@RequestParam(name = "name") String keyword, Model model) {
		List<Product> categoryProducts = categoryProductRepository.locSanPham(keyword);
		model.addAttribute("productList", categoryProducts);
		model.addAttribute("categoryName", categoryProductRepository.selectByName());

		return "product_component";
	}

	@GetMapping("/search/price")
	private String locPrice(@RequestParam(name = "price1") BigDecimal price1,
			@RequestParam(name = "price2") BigDecimal price2, Model model) {
		List<Product> products = productService.selectByPrice(price1, price2);
		model.addAttribute("productList", products);
		model.addAttribute("categoryName", categoryProductRepository.selectByName());

		return "product_component";
	}

}
