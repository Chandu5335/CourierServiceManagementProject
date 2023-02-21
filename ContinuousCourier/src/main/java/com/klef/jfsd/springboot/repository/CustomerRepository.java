package com.klef.jfsd.springboot.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Contact;
import com.klef.jfsd.springboot.model.Customer;


@Repository
public interface CustomerRepository extends CrudRepository<Customer, Integer>
{
	@Query("select e from Customer e where username=?1 and password=?2")
	public Customer checkcuslogin(String uname,String pwd);
	
	@Query("select e from Customer e where username=?1")
	public Customer viewcustomer(String uname);
	
	@Transactional
	@Modifying
	@Query("update Customer e set e.password=?1 where e.password=?2 and e.username=?3")
	public int updatecuspassword(String cusnewpwd,String cusoldpwd,String cusuname);
	
	
}
