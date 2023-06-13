package com.poly.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.ProductOrder;
import com.poly.entity.User;
import com.poly.repository.IUserRepository;
import com.poly.service.IUserService;

@Service
public class UserService implements IUserService {

	@Autowired
	private IUserRepository userRepository;

	@Override
	public User findByEmailAndPassword(String name, String password) {
		User user = userRepository.findByEmailAndPassword(name, password);
		if (user != null) {
			return user;
		}
		return null;
	}

	@Override
	public User save(User user) {
		user.setCreatedDate(new Date());
		user.setAdmin(false);
		user.setStatusActivity(true);
		User u = userRepository.save(user);
		if (u != null) {
			return u;
		}
		return null;
	}

	@Override
	public List<User> selecAll() {
		return userRepository.findAll();
	}

	@Override
	public List<ProductOrder> selectAllByIDProductOrder(Long id) {
		List<ProductOrder> listProductOrders = userRepository.selectAllByIDProductOrder(id);
		return listProductOrders;
	}

}
