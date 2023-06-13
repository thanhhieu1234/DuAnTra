package com.poly.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tbl_product_order")
@Entity
public class ProductOrder extends MilkTeaBase {

	@ManyToOne()
	@JoinColumn(name = "fk_product_id")
	private Product product;

	@ManyToOne()
	@JoinColumn(name = "fk_order_id")
	private Order order;
	
	@ManyToOne()
	@JoinColumn(name = "fk_size_id")
	private Size size;

	private Integer quantity;
	private BigDecimal total;
}
