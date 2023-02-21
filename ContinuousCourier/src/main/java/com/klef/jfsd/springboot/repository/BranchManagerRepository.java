package com.klef.jfsd.springboot.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.BranchManager;
import com.klef.jfsd.springboot.model.Order;

@Repository
public interface BranchManagerRepository extends CrudRepository<BranchManager, Integer>
{  

	@Query("select b from BranchManager b where username=?1 and password=?2")
	public BranchManager checkbmlogin(String uname,String pwd);
	
	@Query("select b from BranchManager b where username=?1")
	public BranchManager viewbranchmanager(String uname);
	
	@Transactional
	@Modifying
	@Query("update BranchManager b set b.password=?1 where b.password=?2 and b.username=?3")
	public int updatebmpassword(String bmnewpwd,String bmoldpwd,String bmuname);
	
//	@Transactional
//	@Modifying
//	@Query("update Order o set o.Status=?1 where o.username=?2")
//	public int updateorderstatus(String ordstatus, String cuname);
}
