package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.BranchManager;
import com.klef.jfsd.springboot.model.Customer;

public interface AdminService
{
	public Admin checkadminlogin(String uname,String pwd);
	public List<Customer> viewallcustomers();
	public List<BranchManager> viewallbranchmanagers();
	public void deletecustomer(int id);
	public void deletebranchmanager(int id);
	public Customer viewcustomerbyid(int id);
	public BranchManager viewbranchmanagerbyid(int id);
	public int countcust();
	public int countbms();
}
