package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.ProductOrder;
import com.poly.entity.User;

public interface IUserRepository extends JpaRepository<User, Long> {

	@Query(value = "Select u from User u where u.email = :email and u.password = :password")
	public User findByEmailAndPassword(@Param("email") String email, @Param("password") String password);

	@Query(value = "select p from ProductOrder p where p.order.user.id = ?1 order by p.order.buyDate desc ")
	public List<ProductOrder> selectAllByIDProductOrder(Long id);
}
