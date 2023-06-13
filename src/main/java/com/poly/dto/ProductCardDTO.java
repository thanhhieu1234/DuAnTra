package com.poly.dto;

import com.poly.entity.Product;
import com.poly.entity.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductCardDTO {
	private Product product;
	private Size size;
	private int quantity;

	public void increment() {
		this.quantity++;
	}
}
