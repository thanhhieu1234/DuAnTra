package com.poly.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.poly.entity.ProductOrder;

@Service

public interface IProductOrderService {
	public Long getIndex();

	public Long getCount();
	
	public List<ProductOrder> getRevenueStatistics();

}
