package com.poly.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.Order;
import com.poly.repository.IOrderRepository;
import com.poly.service.IOrderService;

@Service
public class OrderService implements IOrderService {

	@Autowired
	private IOrderRepository iOrderRepository;

	@Override
	public Order save(Order order) {
		Order order1 = iOrderRepository.save(order);
		if (order1 != null) {
			return order1;
		}
		return null;
	}

	

}
