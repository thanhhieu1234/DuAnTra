package com.poly.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.poly.entity.CategoryProduct;

@Service
public interface ICategoryProductService {
	public List<CategoryProduct> selectAllCategoryProduct();

	public CategoryProduct save(CategoryProduct product);

	public int delete(Long id);
	
	public CategoryProduct update(Long id ,CategoryProduct product);


	public CategoryProduct findByID(Long id);

}
