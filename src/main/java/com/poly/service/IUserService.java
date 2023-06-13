package com.poly.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.poly.entity.ProductOrder;
import com.poly.entity.User;

@Service
public interface IUserService {
   
	public User findByEmailAndPassword(String name , String password);
	
	public User save(User user);
	
	public List<User> selecAll();
	
	public List<ProductOrder> selectAllByIDProductOrder(Long id);

}
