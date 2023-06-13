package com.poly.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tbl_order")
@Entity
public class Order extends MilkTeaBase {

	@ManyToOne
	@JoinColumn(name = "fk_user_id")
	private User user;

	@DateTimeFormat(pattern = "dd-MM-yyyy HH:mm:ss")
	private Date buyDate;

	@Length(max = 150)
	private String fullName;

	@Length(max = 250)
	private String address;

	@Length(max = 11)
	private String phone;

	@OneToMany(mappedBy = "order",cascade = CascadeType.ALL)
	private List<ProductOrder> productOrders;

	private Boolean statusOrder;

}
