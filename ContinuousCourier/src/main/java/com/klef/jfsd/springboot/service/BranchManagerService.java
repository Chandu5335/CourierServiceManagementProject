package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.BranchManager;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Order;

public interface BranchManagerService {

	public BranchManager addbranchmanager(BranchManager branchmanager);
	public BranchManager viewbranchmanager(String buname);
	public BranchManager checkbmlogin(String uname,String pwd);
	public int changebranchmanagerpassword(String bmoldpwd,String bmnewpwd,String buname);
	public List<Order> viewallorders();
	public Order vieworderbyid(int id);
	public int updatestatus(String ordstatus, String uname);
	
}
