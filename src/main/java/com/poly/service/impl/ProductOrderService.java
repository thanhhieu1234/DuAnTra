package com.poly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.ProductOrder;
import com.poly.repository.IProductOrderRepository;
import com.poly.service.IProductOrderService;

@Service
public class ProductOrderService implements IProductOrderService {

	@Autowired
	private IProductOrderRepository iProductOrderRepository;

	@Override
	public Long getIndex() {
		Long value = this.getCount() / 10;
		if (this.getCount() % 10 != 0) {
			value++;
		}
		return value;
	}

	@Override
	public Long getCount() {
		Long count = iProductOrderRepository.count();
		return count;
	}

	@Override
	public List<ProductOrder> getRevenueStatistics() {
		return null;
	}

}
