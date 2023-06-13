package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Size;

public interface ISizeRepository extends JpaRepository<Size, Long> {

	@Query(value = "select s from Size s where s.id = ?1")
	public Size findByID(Long id);
	
	@Query(value = "select s.nameSize from Size s ")
	public List<Size> selectByName();
}
