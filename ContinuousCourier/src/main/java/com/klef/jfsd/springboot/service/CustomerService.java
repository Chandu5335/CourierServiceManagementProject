package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Contact;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Order;

public interface CustomerService
{
	public Customer addcustomer(Customer customer);
	public Customer checkcuslogin(String uname,String pwd);
	public Customer viewcustomer(String uname);
	public int changecustomerpassword(String cusoldpwd,String cusnewpwd,String cuname);
	public Order addorder(Order order);
	public Contact addmsg(Contact contact);
	public Order viewstatus(String uname);
	public List<Order> viewcustmersorders(String uname);
}
