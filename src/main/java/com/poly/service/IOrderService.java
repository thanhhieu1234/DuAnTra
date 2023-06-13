package com.poly.service;

import org.springframework.stereotype.Service;

import com.poly.entity.Order;

@Service
public interface IOrderService  {
 
	public Order save(Order order);
	
	
}
