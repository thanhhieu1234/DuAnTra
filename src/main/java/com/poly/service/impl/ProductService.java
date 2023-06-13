package com.poly.service.impl;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.Product;
import com.poly.repository.IProductRepository;
import com.poly.service.IProductService;

@Service
public class ProductService implements IProductService {

	@Autowired
	private IProductRepository iProductRepository;

	@Override
	public List<Product> selecAll() {
		// TODO Auto-generated method stub
		return iProductRepository.findAll();
	}

	@Override
	public Product findByIDAndName(Long id, String name) {
		Product product = iProductRepository.findByIDAndName(id, name);
		if (product != null) {
			return product;
		}
		return null;
	}

	@Override
	public Long getIndex() {
		Long value = this.getCount() / 9;
		if (this.getCount() % 9 != 0) {
			value++;
		}
		return value;
	}

	@Override
	public Long getCount() {
		Long count = iProductRepository.count();
		return count;
	}

	@Override
	public List<Product> selectByName(String keyword) {
		List<Product> products = iProductRepository.selectByName(keyword);
		return products;
	}

	@Override
	public Product save(Product product) {
		Product product2 = iProductRepository.save(product);
		if (product2 != null) {
			return product2;
		}
		return null;
	}

	@Override
	public Product findByID(Long id) {
		Product product = iProductRepository.findByID(id);
		if (product != null) {
			return product;
		}
		return product;
	}

	@Override
	public List<Product> selectByPrice(BigDecimal price1, BigDecimal price2) {
		return iProductRepository.selectByPrice(price1, price2);

	}

}
