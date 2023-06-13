package com.poly.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dto.ProductCardDTO;
import com.poly.entity.Order;
import com.poly.entity.Product;
import com.poly.entity.ProductOrder;
import com.poly.entity.Size;
import com.poly.entity.User;
import com.poly.repository.IProductOrderRepository;
import com.poly.service.impl.OrderService;
import com.poly.service.impl.ProductCardService;
import com.poly.service.impl.ProductService;
import com.poly.service.impl.SizeService;
import com.poly.utils.SessionUtil;

@Controller
public class ShoppingCardController {

	@Autowired
	private IProductOrderRepository iProductOrderRepository;

	@Autowired
	private OrderService orderService;

	@Autowired
	private ProductCardService productCardService;

	@Autowired
	private SessionUtil sessionUtil;

	@Autowired
	private SizeService sizeService;

	@Autowired
	private ProductService productService;

	@GetMapping("/shopping-card")
	private String getCard(Model model) {
		model.addAttribute("total", productCardService.getTotal());
		model.addAttribute("cardList", productCardService.selectAll());
		return "shopping_component";

	}

	@GetMapping("/addtocard/{id}/")
	private String addToCard(@PathVariable(name = "id") Long id, @RequestParam(name = "size") Long idSize,
			Model model) {
		ProductCardDTO cardService = productCardService.save(id, idSize);
//		sessionUtil.add("cardItem", cardService);
		model.addAttribute("card", productCardService.getAmountCard(id));
		model.addAttribute("total", productCardService.getTotal());
		model.addAttribute("cardList", productCardService.selectAll());

		return "shopping_component";
	}

	@GetMapping("/deleteCard/id={id}")
	private String deleteCard(@PathVariable(name = "id") Long id, Model model) {
		int result = productCardService.remove(id);
		if (result > 0) {
			model.addAttribute("card", productCardService.getAmountCard(id));
			model.addAttribute("total", productCardService.getTotal());
			model.addAttribute("cardList", productCardService.selectAll());
			return "shopping_component";
		}
		System.out.println("xoa ko thanh cong");
		return "shopping_component";
	}

	@PostMapping("/update/{id}")
	private String update(@PathVariable(name = "id") Long id, @RequestParam(name = "soluong") Integer quantity,
			Model model) {
		ProductCardDTO card = productCardService.update(id, quantity);
		if (card != null) {
			model.addAttribute("card", productCardService.getAmountCard(id));
			model.addAttribute("total", productCardService.getTotal());
			model.addAttribute("cardList", productCardService.selectAll());
		}
		return "shopping_component";
	}

	@GetMapping("/clearCard")
	private String clearCard(Model model) {
		productCardService.clear();
		model.addAttribute("total", productCardService.getTotal());
		model.addAttribute("cardList", productCardService.selectAll());
		return "shopping_component";
	}

	@GetMapping("/mua-hang")
	private String muaHang(Model model, @ModelAttribute("order") Order order) {
		model.addAttribute("total", productCardService.getTotal());
		model.addAttribute("cardList", productCardService.selectAll());
		return "checkout";
	}

	@PostMapping("/checkout")
	private String checkout(Model model, @ModelAttribute("order") Order order) {

		User user = (User) sessionUtil.get("user");
		order.setBuyDate(new Date());
		order.setCreatedDate(new Date());
		order.setStatusOrder(false);
		order.setUser(user);

		orderService.save(order);

		Collection<ProductCardDTO> map = productCardService.selectAll();

		for (ProductCardDTO productCardDTO : map) {
			System.out.println(productCardDTO.getProduct().getId() + "---" + productCardDTO.getSize().getNameSize());

			Long idProduct = productCardDTO.getProduct().getId();
			Long idSize = productCardDTO.getSize().getId();

			int quantity = productCardDTO.getQuantity();
			BigDecimal gia = productCardDTO.getProduct().getPrice();
			Double total = 0d;
			Double tong = gia.doubleValue() * quantity;
			total += tong;

			Product product = productService.findByID(idProduct);
			Size size = sizeService.findByID(idSize);

			BigDecimal totalDecimal = new BigDecimal(total);
			ProductOrder productOrder = new ProductOrder(product, order, size, quantity, totalDecimal);
			productOrder.setCreatedDate(new Date());

			iProductOrderRepository.save(productOrder);

		}
		productCardService.clear();

		model.addAttribute("total", productCardService.getTotal());
		model.addAttribute("cardList", productCardService.selectAll());
		model.addAttribute("message", "Bạn đã đặt hàng thành công.Vui lòng quay trở lại");
		return "thanhcong";
	}

}
