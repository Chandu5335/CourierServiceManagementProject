package com.klef.jfsd.springboot.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Order;

@Repository
public interface OrderRepository extends CrudRepository<Order, Integer> {

	@Query("select e from Order e where username=?1")
	public Order orderstatus(String uname);
	
	@Transactional
	@Modifying
	@Query("update Order o set o.Status=?1 where o.username=?2")
	public int updateorderstatus(String ordstatus, String uname);

	@Query("select o from Order o where username=?1")
	public List<Order> totalorderuser(String uname);

	}
