package com.poly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.Size;
import com.poly.repository.ISizeRepository;
import com.poly.service.ISizeService;

@Service
public class SizeService implements ISizeService {

	@Autowired
	private ISizeRepository sizeRepository;

	@Override
	public List<Size> getName() {
		// TODO Auto-generated method stub
		return sizeRepository.findAll();
	}

	@Override
	public Size findByID(Long id) {
		// TODO Auto-generated method stub
		Size size = sizeRepository.findByID(id);
		if (size != null) {
			return size;
		}
		return null;
	}

	@Override
	public List<Size> selectByName() {
		List<Size> sizes = sizeRepository.selectByName();
		return sizes;
	}

}
