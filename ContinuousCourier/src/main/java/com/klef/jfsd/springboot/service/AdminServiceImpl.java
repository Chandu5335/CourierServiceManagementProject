package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.BranchManager;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.BranchManagerRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private BranchManagerRepository branchmanagerRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadnminlogin(uname, pwd);
	}

	@Override
	public List<Customer> viewallcustomers() 
	{
		return (List<Customer>) customerRepository.findAll();
	}
	
	@Override
	public void deletecustomer(int id)
	{
		customerRepository.deleteById(id);
		
	}

	@Override
	public Customer viewcustomerbyid(int id)
	{
		return customerRepository.findById(id).get();
	}

	@Override
	public List<BranchManager> viewallbranchmanagers() {
		
		return (List<BranchManager>) branchmanagerRepository.findAll();
	}
	
	@Override
	public BranchManager viewbranchmanagerbyid(int id)
	{
		return branchmanagerRepository.findById(id).get();
	}

	@Override
	public void deletebranchmanager(int id) {
		customerRepository.deleteById(id);
		
	}

	@Override
	public int countcust() {
		
		int ans = adminRepository.countcustomers();
		return ans;
	}

	@Override
	public int countbms() {
		
		int ans = adminRepository.countbms();
		
		return ans;
	}
}
