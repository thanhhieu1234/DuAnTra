package com.poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entity.User;
import com.poly.service.impl.UserService;

@Controller
public class RegisterController {
	@Autowired
	private UserService userService;

	@GetMapping("/register")
	private String register(@ModelAttribute("registerUser") User user) {

		return "register_component";
	}

	@PostMapping("/register/")
	private String registerForm(@Valid @ModelAttribute("registerUser") User user, BindingResult result,
			@RequestParam(name = "r_password") String remberPassword, Model model) {
		if (result.hasErrors()) {
			return "register_component";
		}
		if (!user.getPassword().equals(remberPassword)) {
			model.addAttribute("message", "Mật khẩu không trùng khớp");
			return "register_component";
		}
		List<User> users = userService.selecAll();
		for (User user2 : users) {
			if (user2.getEmail().equals(user.getEmail())) {
				model.addAttribute("error", "Email đã tồn tại");
				return "register_component";
			} 
		}
		userService.save(user);
		return "signIn_component";
	}

	@ModelAttribute("cities")
	private List<String> getCity() {
		List<String> city = new ArrayList<>();
		city.add("TP Hồ Chí Minh");
		return city;

	}

	@ModelAttribute("districts")
	private List<String> getDistrics() {
		List<String> distric = new ArrayList<>();
		distric.add("Quận 1");
		distric.add("Quận 2");
		distric.add("Quận 3");
		distric.add("Quận 4");
		distric.add("Quận 5");
		distric.add("Quận 6");
		return distric;
	}

}
