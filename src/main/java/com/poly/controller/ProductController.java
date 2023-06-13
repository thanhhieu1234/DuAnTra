package com.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entity.Product;
import com.poly.repository.ICategoryProductRepository;
import com.poly.repository.IProductRepository;
import com.poly.service.impl.ProductService;
import com.poly.service.impl.SizeService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private IProductRepository iProductRepository;

	@Autowired
	private ICategoryProductRepository categoryProductRepository;

	@Autowired
	private SizeService service;

	@GetMapping("/product")
	private String getProduct(Model model, Optional<Integer> id) {

		Pageable pageable = PageRequest.of(id.orElse(0), 9);
		Page<Product> page = iProductRepository.findAll(pageable);
		
		
		model.addAttribute("categoryName", categoryProductRepository.selectByName());
		model.addAttribute("sizeList", service.getName());
		model.addAttribute("productList", page);
		model.addAttribute("endIndex", productService.getIndex());
		return "category_component";
	}

	@GetMapping("/product/page")
	private String selectPage(Model model, @RequestParam(name = "number") Integer id, Integer idSize) {

		id = id - 1;
		Pageable pageable = PageRequest.of(id, 9);
		Page<Product> page = iProductRepository.findAll(pageable);
		model.addAttribute("sizeList", service.getName());
		model.addAttribute("productList", page);
		model.addAttribute("endIndex", productService.getIndex());
		// model.addAttribute("index", id);
		System.out.println(page.getNumber());
		model.addAttribute("index", page.getNumber());
		return "category_component";
	}

}
