package com.poly.entity;

import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tbl_category_product")
@Entity
public class CategoryProduct extends MilkTeaBase {

	@Length(max = 50)
	private String title;
	@Length(max = 50)
	private String nameCode;
	private Boolean status;
	
	@OneToMany(mappedBy = "categoryProduct")
	private List<Product> products;
}
