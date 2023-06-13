package com.poly.repository;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Product;

public interface IProductRepository extends JpaRepository<Product, Long> {

	@Query(value = "select p from Product p where p.id = ?1 and p.title = ?2 ")
	public Product findByIDAndName(Long id, String name);

	@Query(value = "select p from Product p where p.title like ?1 ")
	public List<Product> selectByName(String keyword);

	@Query(value = "select p from Product p where p.id = ?1")
	public Product findByID(Long id);

	@Query(value = "select p from Product p where p.price between ?1 and ?2  ")
	public List<Product> selectByPrice(BigDecimal price1, BigDecimal price2);
}
