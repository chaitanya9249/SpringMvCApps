package com.navtech.dao.mainrequesents;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.navtech.model.LeaveRequest;
import com.navtech.service.prerequesents.EmployeeUtilService;

@Repository
@Transactional
public class LeaveManagementDaoImpl implements LeaveManagementDao 
{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private EmployeeProfileDao employeeProfileDao;
	
	@Autowired
	private EmployeeUtilService employeeUtilService;

	@Override
	public void sendLeaveRequest(LeaveRequest leaveRequest) 
	{
		
		sessionFactory.getCurrentSession().save(leaveRequest);
	}

	@Override
	public List<LeaveRequest> leaveReuestsList() 
	{
		Session session               = null;
		long employId                 = 0;
		Date leaveFromDate            = null;
		Date leaveRequestDate         = null;
		Date leaveToDate              = null;
		String reason                 = "";
		int departmentId              = 0;
		int designationId             = 0;
		String leaveStatus            = "";
		String departmentName         = "";
		String designationName        = "";
		String username               = "";
		String employCode             = "";
		String employName             = "";
		long leaveRequestId           = 0;
		LeaveRequest leaveRequest    = null;
		
		List<LeaveRequest> leaveRequestList = new ArrayList<LeaveRequest>();
		
		try 
		{
			session = sessionFactory.getCurrentSession();

			Query query = session.createQuery("select "
					+ "lr.employId,lr.leaveFromDate,lr.leaveRequestDate,lr.leaveToDate,lr.reason,"
					+ " lr.departmentId,lr.designationId,lr.leaveStatus,lr.leaveRequestId"
					+ " from LeaveRequest lr");
			
			List<Object[]> lrList = query.list(); 
			
			for(Object[] user : lrList)
			{
				leaveRequest        =  new LeaveRequest();
				
				employId            = (long) user[0];
				leaveFromDate       = (Date) user[1];
				leaveRequestDate    = (Date) user[2];
				leaveToDate         = (Date) user[3];
				reason              = (String) user[4];
				departmentId        = (int) user[5];
				designationId       = (int) user[6];
				leaveStatus         = (String) user[7];
				leaveRequestId      = (long) user[8];
				
				
				
				departmentName      = employeeUtilService.getDepartments(departmentId).getDepartmentName();
				designationName     = employeeUtilService.getDesignations(designationId).getDesignationName();
				employCode          = employeeProfileDao.findEmployeeByLoggedInUserId(employId).getEmployCode();
				employName          = employeeProfileDao.findEmployeeByLoggedInUserId(employId).getEmployeeName();
				
				leaveRequest.setEmployId(employId);
				leaveRequest.setLeaveFromDate(leaveFromDate);
				leaveRequest.setLeaveRequestDate(leaveRequestDate);
				leaveRequest.setLeaveToDate(leaveToDate);
				leaveRequest.setReason(reason);
				leaveRequest.setDepartmentId(departmentId);
				leaveRequest.setDesignationId(designationId);
				leaveRequest.setLeaveStatus(leaveStatus);
				leaveRequest.setDepartmentName(departmentName);
				leaveRequest.setDesignationName(designationName);
				leaveRequest.setEmployName(employName);
				leaveRequest.setEmployCode(employCode);
				leaveRequest.setLeaveRequestId(leaveRequestId);
				
				leaveRequestList.add(leaveRequest);
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return leaveRequestList;
	}

	@Override
	public void approveLeaveRequest(LeaveRequest leaveRequest) 
	{
		
	}

}
