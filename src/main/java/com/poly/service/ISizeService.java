package com.poly.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.poly.entity.Size;

@Service
public interface ISizeService {

	public List<Size> getName();
	
	public Size findByID(Long id);
	
	public List<Size> selectByName();

}
