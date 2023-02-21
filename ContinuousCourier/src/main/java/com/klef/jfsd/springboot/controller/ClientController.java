package com.klef.jfsd.springboot.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.BranchManager;
import com.klef.jfsd.springboot.model.Contact;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Order;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BranchManagerService;
import com.klef.jfsd.springboot.service.CustomerService;

@Controller
public class ClientController
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private BranchManagerService branchmanagerService;
	
	@Autowired
	private CustomerService customerService;
//	
	@GetMapping("/")
	public String mainhomedemo()
	{
		return "index";
	}
	
	@GetMapping("branchmanagerhome")
	public String branchmanagerhomedemo()
	{
		return "branchmanagerhome";
	}
	
	
	@GetMapping("aboutus")
	public String aboutdemodemo()
	{
		return "aboutus";
	}
	
	@GetMapping("/login")
	public String logindemo()
	{
		return "indexlogin";
	}
	
	@GetMapping("/Services")
	public ModelAndView servicedemo()
	{
		ModelAndView mv = new ModelAndView("Services");
		return mv;
	}
	
	@GetMapping("/adminlogin")
	public ModelAndView adminlogindemo()
	{
		ModelAndView mv = new ModelAndView("adminlogin");
		
		return mv;
	}
	
	@GetMapping("/branchmanagerlogin")
	public ModelAndView branchmanagerlogindemo()
	{
		ModelAndView mv = new ModelAndView("branchmanagerlogin");
		
		return mv;
	}
	
	@GetMapping("/customerlogin")
	public ModelAndView customerlogindemo()
	{
		ModelAndView mv = new ModelAndView("customerlogin");
		
		return mv;
	}
	
	@GetMapping("contact")
	public ModelAndView contactdemo(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView("contact","con",new Contact());
		return mv;
	}
	
	@GetMapping("/addcustomer")
	public ModelAndView customerregdemo()
	{
		ModelAndView mv = new ModelAndView("customerregistration", "cus",new Customer());
		return mv;
	}
	
	@GetMapping("/addbranchmanager")
	public ModelAndView branchmanagerregdemo()
	{
		ModelAndView mv = new ModelAndView("branchmanagerreg", "bm",new BranchManager());
		return mv;
	}
	
	@GetMapping("addorder")
	public ModelAndView addorderdemo()
	{
		ModelAndView mv = new ModelAndView("addorder", "ord", new Order());
		return mv;
	}
	
	@GetMapping("/adminhome")
	public ModelAndView adminhomedemo()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		
		
		int count1 = adminService.countcust();
		int count2 = adminService.countbms();
		
		
		
		mv.addObject("count1",count1);
		mv.addObject("count2",count2);
		return mv;
	}
	
	@GetMapping("/customerhome")
	public ModelAndView customerhomedemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView("customerhome");
		
		HttpSession session = request.getSession();
		
		String cuname = (String) session.getAttribute("cuname");
		
		mv.addObject("cuname", cuname);
		
		return mv;
	}
	
	@GetMapping("/viewallcus")
	public ModelAndView viewallcusdemo()
	{		ModelAndView mv = new ModelAndView("viewallcustomers");
		
		List<Customer> cuslist = adminService.viewallcustomers();
		mv.addObject("cuslist",cuslist);
		
		return mv;
	}
	
	@GetMapping("/bmviewallcus")
	public ModelAndView bmviewallcusdemo()
	{		ModelAndView mv = new ModelAndView("viewallcustomers2");
		
		List<Customer> cuslist = adminService.viewallcustomers();
		mv.addObject("cuslist",cuslist);
		
		return mv;
	}
	
	@GetMapping("viewallbms")
	public ModelAndView viewallbmsdemo() {
		ModelAndView mv=new ModelAndView("viewallbms");
		List<BranchManager> bmlist =adminService.viewallbranchmanagers();
		mv.addObject("bmlist",bmlist);
		return mv;
	}
	
	@GetMapping("viewallorders")
	public ModelAndView viewallordersdemo() {
		ModelAndView mv=new ModelAndView("viewallorders");
		List<Order> ordlist =branchmanagerService.viewallorders();
		mv.addObject("ordlist",ordlist);
		return mv;
	}
	
	@GetMapping("custviewallorders")
	public ModelAndView custviewallordersdemo(HttpServletRequest request) {
		 HttpSession session = request.getSession();
		ModelAndView mv=new ModelAndView("custviewallorders");
		
		String cuname = (String) session.getAttribute("cuname");
		
		List<Order> ordlist = customerService.viewcustmersorders(cuname);
		mv.addObject("ordlist",ordlist);
		return mv;
	}
	   
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			
			HttpSession session = request.getSession();
			
			session.setAttribute("auname", auname);
			
			mv.setViewName("adminhome");
			int count1 = adminService.countcust();
			int count2 = adminService.countbms();
			
			mv.addObject("count1",count1);
			mv.addObject("count2",count2);
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		
		return mv;
	}
	
	
	@PostMapping("/checkcuslogin")
	public ModelAndView checkcuslogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String cuname = request.getParameter("cuname");
		String cpwd = request.getParameter("cpwd");
		
		Customer cus = customerService.checkcuslogin(cuname, cpwd);
		
		if(cus!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("cuname", cuname);
			
			mv.setViewName("customerhome");
		}
		else
		{
			mv.setViewName("customerlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		
		return mv;
	}
	
	@PostMapping("/checkbmlogin")
	public ModelAndView checkbmlogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String bmuname = request.getParameter("bmuname");
		String bmpwd = request.getParameter("bmpwd");
		
		BranchManager bm = branchmanagerService.checkbmlogin(bmuname, bmpwd);
		
		if(bm!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("bmuname", bmuname);
			
			mv.setViewName("branchmanagerhome");
		}
		else
		{
			mv.setViewName("branchmanagerlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		
		return mv;
	}
	
	
	@PostMapping("/addcustomer")
	public String addcustomerdemo(@ModelAttribute("cus") Customer customer)
	{
		customerService.addcustomer(customer);
		
		ModelAndView mv = new ModelAndView();
	mv.setViewName("customerregistration");
		mv.addObject("msg", "Customer Registered Successfully");
	
		return "redirect:customerlogin";
	}
	
	@PostMapping("/addorder")
	public String addorderdemo(@ModelAttribute("ord") Order order)
	{
		
		int order_id = (int)((Math.random())*99999)+1;
		
		order.setId(order_id);
		
		String order_status="Placed";
		order.setStatus(order_status);
		customerService.addorder(order);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addorder");
		mv.addObject("msg", "Order Placed Successfully");
	
		return "redirect:customerhome";
	}
	
	
	@PostMapping("/addmsg")
	public String submitreqdemo(@ModelAttribute("con") Contact contact)
	{
		customerService.addmsg(contact);
		
		ModelAndView mv = new ModelAndView();
	mv.setViewName("contact");
		mv.addObject("msg", "Response Added Successfully");
	
		return "redirect:contact";
	}
	
	
	
	@PostMapping("/addbranchmanager")
	public String addcustomerdemo(@ModelAttribute("bm") BranchManager branchmanager)
	{
		branchmanagerService.addbranchmanager(branchmanager);
		
		ModelAndView mv = new ModelAndView();
	mv.setViewName("branchmanagerreg");
		mv.addObject("msg", "BranchManager Added Successfully");
	
		return "redirect:branchmanagerlogin";
	}
	
	
	@GetMapping("/deletecus")
	public String deletecusdemo(@RequestParam("id") int cid)
	{
		adminService.deletecustomer(cid);
		
		return "redirect:viewallcus";
	}
	
	@GetMapping("/deletebm")
	public String deletebmdemo(@RequestParam("id") int bid)
	{
		adminService.deletebranchmanager(bid);
		
		return "redirect:viewallbms";
	}
	
	@GetMapping("/viewcus")
	public ModelAndView viewcus(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String cuname = (String) session.getAttribute("cuname");
		
		Customer cus =  customerService.viewcustomer(cuname);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewcustomer");
		mv.addObject("cus",cus);
		
		return mv;
	}
	
	@GetMapping("/viewstatus")
	public ModelAndView viewstatus(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String cuname = (String) session.getAttribute("cuname");
		
		Order ord =  customerService.viewstatus(cuname);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewstatus");
		mv.addObject("ord",ord);
		
		return mv;
	}
	

	@GetMapping("/viewbm")
	public ModelAndView viewbm(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String bmuname = (String) session.getAttribute("bmuname");
		
		BranchManager bm =  branchmanagerService.viewbranchmanager(bmuname);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewbranchmanager");
		mv.addObject("bm",bm);
		
		return mv;
	}
	
	
	
	
	@GetMapping("/cchangepwd")
	public ModelAndView cchangepwd(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String cuname = (String) session.getAttribute("cuname");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cuschangepwd");
		mv.addObject("cuname",cuname);
		
		return mv;
	}
	
	
	
	
	@PostMapping("/updatecuspwd")
    public ModelAndView updatecuspwddemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cuschangepwd");
		
		HttpSession session = request.getSession();
		
		String cuname = (String) session.getAttribute("cuname");
		
		String coldpwd = request.getParameter("copwd");
		String cnewpwd = request.getParameter("cnpwd");
		
		int n = customerService.changecustomerpassword(coldpwd, cnewpwd, cuname);
		
		if(n > 0)
		{
			
			mv.addObject("msg","Password Updated Successfully");
		}
		else
		{
			mv.addObject("msg","Old Password is Incorrect");
		}
		
		return mv;
	}
	
	@GetMapping("/bchangepwd")
	public ModelAndView bchangepwd(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String buname = (String) session.getAttribute("buname");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bmchangepwd");
		mv.addObject("buname",buname);
		
		return mv;
	}
	
	@GetMapping("changestatus")
	public ModelAndView updatestatusdemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String cuname = (String) session.getAttribute("cuname");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatestatus");
		mv.addObject("cuname",cuname);
		
		return mv;
	}
	
	@PostMapping("/updatestatus")
    public ModelAndView updatestatus(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatestatus");
		
		HttpSession session = request.getSession();
		
		String cuname = (String) session.getAttribute("cuname");
		
		
		String ordstatus = request.getParameter("Status");
		
		System.out.println(ordstatus+" "+ cuname);
		
		
	    int n = branchmanagerService.updatestatus(ordstatus, cuname);
		
		if(n > 0)
		{
			
			mv.addObject("msg","Order Updated Successfully");
		}
		else
		{
			mv.addObject("msg","invalid Updation");
		}
		
		return mv;
	}
	
	
	
	@PostMapping("/updatebmpwd")
    public ModelAndView updatebmpwddemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bmchangepwd");
		
		HttpSession session = request.getSession();
		
		String buname = (String) session.getAttribute("buname");
		
		String boldpwd = request.getParameter("bopwd");
		String bnewpwd = request.getParameter("bnpwd");
		
		int n = branchmanagerService.changebranchmanagerpassword(boldpwd, bnewpwd, buname);
		
		if(n > 0)
		{
			
			mv.addObject("msg","Password Updated Successfully");
		}
		else
		{
			mv.addObject("msg","Old Password is Incorrect");
		}
		
		return mv;
	}
	
//	@PostMapping("/updateorderstatus")
//    public ModelAndView updateorderstatus(HttpServletRequest request)
//	{
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("updatestatus");
//		
//		HttpSession session = request.getSession();
//		
//		String cuname = (String) session.getAttribute("cuname");
//		
//		String ostatus = request.getParameter("status");
//		
//		int n = branchmanagerService.updateorderstatus(ostatus, cuname);
//		
//		if(n > 0)
//		{
//			
//			mv.addObject("msg","Order status updated Successfully");
//		}
//		
//		return mv;
//	}
//	
	
	@GetMapping("/viewcusbyid")
	public ModelAndView viewcusbyiddemo(@RequestParam("id") int cid)
	{
		Customer cus = adminService.viewcustomerbyid(cid);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("viewcusbyid");
		mv.addObject("cus",cus);
		
		return mv;
	}
	
	@GetMapping("/adminviewcusbyid")
	public ModelAndView adminviewcusbyiddemo(@RequestParam("id") int cid)
	{
		Customer cus = adminService.viewcustomerbyid(cid);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("viewcusbyid2");
		mv.addObject("cus",cus);
		
		return mv;
	}
	
	@GetMapping("viewordbyid")
	public ModelAndView viewordbyiddemo(@RequestParam("id") int id)
	{
		Order ord = branchmanagerService.vieworderbyid(id);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("vieworderbyid");
		mv.addObject("ord",ord);
		
		return mv;
	}
	
	@GetMapping("custvieworderbyid")
	public ModelAndView custviewordbyiddemo(@RequestParam("id") int id)
	{
		Order ord = branchmanagerService.vieworderbyid(id);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("custvieworderbyid");
		mv.addObject("ord",ord);
		
		return mv;
	}
	
	
	
	@GetMapping("/viewbmbyid")
	public ModelAndView viewbmbyiddemo(@RequestParam("id") int bid)
	{
		BranchManager bm = adminService.viewbranchmanagerbyid(bid);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("viewbmbyid");
		mv.addObject("bm",bm);
		
		return mv;
	}
	
	@GetMapping("/orderstatus")
	public ModelAndView vieworder(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String cuname = (String) session.getAttribute("cuname");
		
		List<Order> bm =  branchmanagerService.viewallorders();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewstatus");
		mv.addObject("bm",bm);
		
		return mv;
	}
	
	
	
	
}
