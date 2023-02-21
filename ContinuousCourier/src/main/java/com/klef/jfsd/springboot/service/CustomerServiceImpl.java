package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Contact;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Order;
import com.klef.jfsd.springboot.repository.ContactRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.OrderRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private ContactRepository contactRepository;

	@Override
	public Customer addcustomer(Customer customer)
	{
		return customerRepository.save(customer);
		
	}

	@Override
	public Customer checkcuslogin(String uname, String pwd) 
	{
		return customerRepository.checkcuslogin(uname, pwd);
	}

	@Override
	public Customer viewcustomer(String uname) 
	{
		
		return customerRepository.viewcustomer(uname);
	}

	@Override
	public int changecustomerpassword(String cusoldpwd, String cusnewpwd, String cuname)
	{
		return customerRepository.updatecuspassword(cusnewpwd, cusoldpwd, cuname);
	}

	@Override
	public Order addorder(Order order) {
		return orderRepository.save(order);
	}

	@Override
	public Contact addmsg(Contact contact) {
		return contactRepository.save(contact);
		
	}

	@Override
	public Order viewstatus(String uname) {
		return orderRepository.orderstatus(uname);
	}

	@Override
	public List<Order> viewcustmersorders(String uname) {
		// TODO Auto-generated method stub
		return orderRepository.totalorderuser(uname);
	}

}
