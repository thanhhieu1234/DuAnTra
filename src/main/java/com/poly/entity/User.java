package com.poly.entity;

import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.Length;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tbl_user")
@Entity
public class User extends MilkTeaBase {

	@Length(max = 250)
	@NotEmpty(message = "Email không được bỏ trống")
	@Email(message = "Email không đúng định dạng")
	private String email;

	@Length(max = 11)
	private String phone;
	private Boolean statusActivity;
	@Length(max = 250)
	private String avatar;

	@NotEmpty(message = "Mật khẩu không được bỏ trống")
	@Length(max = 250)
	private String password;

	@Length(max = 6)
	private String nameCode;

	private Boolean admin;

	@Type(type = "org.hibernate.type.StringNVarcharType")
	private String city;
	private String district;
	private String address;

	@OneToMany(mappedBy = "user")
	private List<Order> orders;

	@Override
	public String toString() {
		return "User [email=" + email + ", phone=" + phone + ", statusActivity=" + statusActivity + ", avatar=" + avatar
				+ ", password=" + password + ", nameCode=" + nameCode + ", admin=" + admin + ", city=" + city
				+ ", district=" + district + ", address=" + address + ", orders=" + orders + "]";
	}

}
