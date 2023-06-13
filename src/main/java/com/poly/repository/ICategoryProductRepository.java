package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.CategoryProduct;
import com.poly.entity.Product;

public interface ICategoryProductRepository extends JpaRepository<CategoryProduct, Long> {
	@Query(value = "select c from CategoryProduct c")
	public List<CategoryProduct> selectByName();
	
	@Query(value = "select c from Product c where c.categoryProduct.title = ?1")
	public List<Product> locSanPham(String key);
	
	@Query(value = "select p from CategoryProduct p")
	public List<CategoryProduct> selectAllCategoryProduct();

}
