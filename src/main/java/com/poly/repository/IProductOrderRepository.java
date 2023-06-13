package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.dto.Report;
import com.poly.entity.Order;
import com.poly.entity.ProductOrder;

public interface IProductOrderRepository extends JpaRepository<ProductOrder, Long> {

	@Query(value = "select p.order.statusOrder from ProductOrder p")
	public List<ProductOrder> selectByNameStatus();

	@Query(value = "select p from ProductOrder p order by p.order.buyDate desc")
	public List<ProductOrder> selectOrderDESCBuyDate();

//	@Query(value = "Select new Report (sum(p.product.price)) from ProductOrder p ")
//	public List<Report> getRevenueStatistics();
}
