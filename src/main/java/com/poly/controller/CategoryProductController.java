package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.poly.repository.ICategoryProductRepository;

@Controller
public class CategoryProductController {

	@Autowired
	private ICategoryProductRepository categoryProductRepository;

}
