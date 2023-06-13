package com.poly.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.poly.entity.CategoryProduct;
import com.poly.service.impl.CategoryProductService;

@Controller
public class CategoryAdminController {

	@Autowired
	private CategoryProductService categoryProductService;

	@GetMapping("/quan-ly-the-loai")
	private String getFromCategoryAdmin(Model model, @ModelAttribute("categories") CategoryProduct categoryProduct) {
		model.addAttribute("categoryList", categoryProductService.selectAllCategoryProduct());
		return "/admin/manage_category";
	}

	@PostMapping("/quan-ly-the-loai/save")
	private String saveCategoryAdmin(Model model, @ModelAttribute("categories") CategoryProduct categoryProduct) {
		categoryProductService.save(categoryProduct);
		model.addAttribute("categoryList", categoryProductService.selectAllCategoryProduct());
		return "/admin/manage_category";
	}

	@GetMapping("/quan-ly-the-loai/edit/{id}")
	private String editFromCategoryAdmin(Model model, @ModelAttribute("categories") CategoryProduct categoryProduct,
			@PathVariable("id") Long id) {
		CategoryProduct product = categoryProductService.findByID(id);

		model.addAttribute("category", product);
		model.addAttribute("categoryList", categoryProductService.selectAllCategoryProduct());
		return "/admin/manage_category";
	}

	@PostMapping("/quan-ly-the-loai/update/{id}")
	private String updateFromCategoryAdmin(Model model, @ModelAttribute("categories") CategoryProduct categoryProduct,
			@PathVariable("id") Long id) {
		CategoryProduct product = categoryProductService.findByID(id);

		categoryProductService.update(id, categoryProduct);
		model.addAttribute("category", product);
		model.addAttribute("categoryList", categoryProductService.selectAllCategoryProduct());

		return "/admin/manage_category";
	}

	@GetMapping("/quan-ly-the-loai/delete/{id}")
	private String deleteFromCategoryAdmin(Model model, @ModelAttribute("categories") CategoryProduct categoryProduct,
			@PathVariable("id") Long id) {
		categoryProductService.delete(id);
		model.addAttribute("categoryList", categoryProductService.selectAllCategoryProduct());
		return "/admin/manage_category";
	}

}
