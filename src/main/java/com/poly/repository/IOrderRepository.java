package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Order;

public interface IOrderRepository extends JpaRepository<Order, Long> {

	@Query(value = "select o from Order o")
	public List<Order> selectStatusOrder();
	
	@Query(value = "select o from Order o where o.id = ?1 ")
	public Order findByID(Long id);
}
