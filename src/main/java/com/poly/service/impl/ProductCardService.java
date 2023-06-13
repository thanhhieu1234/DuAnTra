package com.poly.service.impl;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.dto.ProductCardDTO;
import com.poly.entity.Product;
import com.poly.entity.Size;
import com.poly.service.IProductCardService;
import com.poly.utils.SessionUtil;

@Service
public class ProductCardService implements IProductCardService {
	@Autowired
	private ProductService productService;

	@Autowired
	private SizeService sizeService;

	@Autowired
	private SessionUtil sessionUtil;

	private Long count = 0l;

	private Map<Long, ProductCardDTO> map = new HashMap<>();

	@Override
	public ProductCardDTO save(Long id, Long idSize) {
		ProductCardDTO card = new ProductCardDTO();
		Product product = productService.findByID(id);
		Size size = sizeService.findByID(idSize);
		boolean keyID = map.containsKey(id);
		if (keyID == true) {
			card = this.findByID(id);
			System.out.println(card.getSize().getNameSize() + " -- " + card.getProduct().getTitle());
			card.increment();
		} else {
			card = new ProductCardDTO();
			card.setSize(size);
			card.setProduct(product);
			card.setQuantity(1);
			map.put(id, card);
		}

		return card;
	}

	@Override
	public Collection<ProductCardDTO> selectAll() {
		return map.values();
	}

	@Override
	public ProductCardDTO findByID(Long id) {
		if (map.containsKey(id)) {
			return map.get(id);
		}
		return null;
	}

	@Override
	public Long getAmountCard(Long id) {
		if (map.containsKey(id)) {
			count++;
		} else {
			count--;
		}
		return count;
	}

	@Override
	public Double getTotal() {
		Double total = 0d;
		for (Map.Entry<Long, ProductCardDTO> entry : map.entrySet()) {
			ProductCardDTO val = entry.getValue();
			BigDecimal p = val.getProduct().getPrice();
			int quanty = val.getQuantity();
			double price = p.doubleValue();
			total += quanty * price;
		}
		return total;
	}

	@Override
	public int remove(Long id) {
		if (map.containsKey(id)) {
			map.remove(id);
			return 1;
		}
		return 0;
	}

	@Override
	public ProductCardDTO update(Long id, Integer quantity) {
		ProductCardDTO card = new ProductCardDTO();
		if (map.containsKey(id)) {
			card = this.findByID(id);
			card.setQuantity(quantity);
		} else {
			return null;
		}
		return card;
	}

	@Override
	public void clear() {
		map.clear();
	}

}
