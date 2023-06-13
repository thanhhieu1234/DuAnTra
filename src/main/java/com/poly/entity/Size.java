package com.poly.entity;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
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
@Table(name = "tbl_size")
@Entity
public class Size extends MilkTeaBase {

	@Length(max = 50)
	@Column(name = "name_size")
	private String nameSize;
	private Boolean status;

	@OneToMany(mappedBy = "size", cascade = CascadeType.ALL)
	private List<ProductOrder> productOrders;
}
