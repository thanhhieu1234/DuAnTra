package com.poly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.CategoryProduct;
import com.poly.repository.ICategoryProductRepository;
import com.poly.service.ICategoryProductService;

@Service
public class CategoryProductService implements ICategoryProductService {

	@Autowired
	private ICategoryProductRepository categoryProductRepository;

	@Override
	public List<CategoryProduct> selectAllCategoryProduct() {
		// TODO Auto-generated method stub
		return categoryProductRepository.selectAllCategoryProduct();
	}

	@Override
	public CategoryProduct save(CategoryProduct product) {
		CategoryProduct categoryProduct = categoryProductRepository.save(product);
		if (categoryProduct != null) {
			return categoryProduct;
		}
		return null;
	}

	@Override
	public CategoryProduct findByID(Long id) {
		CategoryProduct categoryProduct = categoryProductRepository.findById(id).orElse(null);
		if (categoryProduct != null) {
			return categoryProduct;
		}
		return null;
	}

	@Override
	public int delete(Long id) {
		CategoryProduct categoryProduct = this.findByID(id);
		categoryProductRepository.delete(categoryProduct);
		return 1;
	}

	@Override
	public CategoryProduct update(Long id, CategoryProduct product) {
		CategoryProduct categoryProduct = this.findByID(id);
		if (categoryProduct != null) {
            categoryProduct.setTitle(product.getTitle());
            categoryProduct.setNameCode(product.getNameCode());
            categoryProduct.setStatus(product.getStatus());
            categoryProductRepository.save(categoryProduct);
		}
		return categoryProduct;
	}

}
