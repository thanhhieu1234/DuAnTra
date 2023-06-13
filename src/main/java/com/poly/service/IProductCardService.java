package com.poly.service;

import java.util.Collection;

import org.springframework.stereotype.Service;

import com.poly.dto.ProductCardDTO;

@Service
public interface IProductCardService {
	public ProductCardDTO save(Long id, Long idSize);

	public Collection<ProductCardDTO> selectAll();

	public ProductCardDTO findByID(Long id);

	public Long getAmountCard(Long id);

	public Double getTotal();

	public int remove(Long id);

	public ProductCardDTO update(Long id, Integer quantity);
	
	public void clear();
}
