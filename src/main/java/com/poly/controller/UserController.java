package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.poly.entity.ProductOrder;
import com.poly.entity.User;
import com.poly.service.impl.UserService;
import com.poly.utils.SessionUtil;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	SessionUtil sessionUtil;

	@GetMapping("/user/lich-su-mua-hang")
	private String selectHistory(Model model) {

		User user = (User) sessionUtil.get("user");
		Long idUser = user.getId();
		List<ProductOrder> listOrder = userService.selectAllByIDProductOrder(idUser);
		model.addAttribute("listOrder", listOrder);
		return "history_pay";
	}
}
