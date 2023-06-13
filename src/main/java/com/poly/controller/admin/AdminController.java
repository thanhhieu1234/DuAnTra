package com.poly.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entity.CategoryProduct;
import com.poly.entity.Order;
import com.poly.entity.Product;
import com.poly.repository.ICategoryProductRepository;
import com.poly.repository.IOrderRepository;
import com.poly.repository.IProductOrderRepository;
import com.poly.service.impl.ProductOrderService;
import com.poly.service.impl.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private ICategoryProductRepository categoryProductRepository;

	@Autowired
	private IProductOrderRepository iProductOrderRepository;

	@Autowired
	private ProductService productService;

	@Autowired
	private IOrderRepository iOrderRepository;

	@Autowired
	private ProductOrderService productOrderService;

	@GetMapping("/")
	private String getFromAdmin() {
		return "/admin/dash_board";
	}

	@GetMapping("/quan-ly-order")
	private String getFromProductOrder(Model model) {

		model.addAttribute("OrderList", iProductOrderRepository.selectOrderDESCBuyDate());
		model.addAttribute("index", productOrderService.getIndex());
		return "/admin/manage_order";
	}

	@PostMapping("/quan-ly-order/{id}")
	private String updateFromProductOrder(Model model, @PathVariable("id") Long id,
			@RequestParam(name = "click", defaultValue = "false") Boolean productOrder) {

		Order order = iOrderRepository.findByID(id);
		if (order != null) {
			order.setStatusOrder(true);
			iOrderRepository.save(order);
		}

		model.addAttribute("nameOrderList", iOrderRepository.selectStatusOrder());
		model.addAttribute("OrderList", iProductOrderRepository.findAll());

		return "/admin/manage_order";
	}

	@GetMapping("/quan-ly-san-pham")
	private String getFromManageProduct(@ModelAttribute("product") Product product, Model model) {

		model.addAttribute("categoryList", categoryProductRepository.findAll());
		return "/admin/manage_product";
	}

	@PostMapping("/saveProduct")
	private String saveProduct(@ModelAttribute("product") Product product,
			@RequestParam(name = "category") CategoryProduct categoryProduct, Model model) {
		System.out.println(product.getImage());
		Long id = product.getId();
		Product p = productService.findByID(id);
		if (p == null) {
			product.setCategoryProduct(categoryProduct);
			productService.save(product);
		}
        model.addAttribute("message", "Thêm thành công");
		model.addAttribute("categoryList", categoryProductRepository.findAll());
		return "/admin/manage_product";
	}

	@GetMapping("/quan-ly-doanh-thu")
	private String getFromStatistics(Model model) {
//		model.addAttribute("a", iProductOrderRepository.getRevenueStatistics());
		return "";
	}

}
