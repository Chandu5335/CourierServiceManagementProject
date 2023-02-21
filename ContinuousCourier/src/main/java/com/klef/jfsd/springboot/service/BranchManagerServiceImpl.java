package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.BranchManager;
import com.klef.jfsd.springboot.model.Order;
import com.klef.jfsd.springboot.repository.BranchManagerRepository;
import com.klef.jfsd.springboot.repository.OrderRepository;

@Service
public class BranchManagerServiceImpl implements BranchManagerService
{

	@Autowired
	private BranchManagerRepository branchmanagerRepository;
	
	@Autowired
	private OrderRepository orderRepository;

	@Override
	public BranchManager addbranchmanager(BranchManager branchmanager)
	{
		return branchmanagerRepository.save(branchmanager);
		
	}

	@Override
	public BranchManager checkbmlogin(String uname, String pwd) 
	{
		return branchmanagerRepository.checkbmlogin(uname, pwd);
	}

	@Override
	public int changebranchmanagerpassword(String bmoldpwd, String bmnewpwd, String buname) {
		
		return branchmanagerRepository.updatebmpassword(bmnewpwd, bmoldpwd, buname);
	}

	@Override
	public BranchManager viewbranchmanager(String buname) {
		return branchmanagerRepository.viewbranchmanager(buname);
	}

	@Override
	public List<Order> viewallorders() {
		return (List<Order>) orderRepository.findAll();
	}

	@Override
	public Order vieworderbyid(int id) {
		return orderRepository.findById(id).get();
	}

	@Override
	public int updatestatus(String ordstatus,String uname) {
		
		return orderRepository.updateorderstatus(ordstatus, uname);
	}

	


	}

