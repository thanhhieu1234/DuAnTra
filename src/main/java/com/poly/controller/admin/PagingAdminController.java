package com.poly.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.poly.repository.IOrderRepository;
import com.poly.repository.IProductOrderRepository;
import com.poly.service.impl.ProductService;

@Controller
public class PagingAdminController {
	@Autowired
	private IProductOrderRepository iProductOrderRepository;

	@Autowired
	private IOrderRepository iOrderRepository;
	
	@Autowired
	private ProductService productService;

	
}
