package com.poly.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.poly.entity.Product;

@Service
public interface IProductService {

	public List<Product> selecAll();

	public Product findByIDAndName(Long id, String name);

	public Long getIndex();

	public Long getCount();

	public List<Product> selectByName(String keyword);

	public Product save(Product product);

	public Product findByID(Long id);

	public List<Product> selectByPrice(BigDecimal price1, BigDecimal price2);

}
