package com.navtech.dao.mainrequesents;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.navtech.model.EmployeeProfile;
import com.navtech.model.LeaveRequest;
import com.navtech.service.prerequesents.EmployeeUtilService;

@Repository
@Transactional
public class EmployeeProfileDaoImpl implements EmployeeProfileDao 
{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private EmployeeUtilService employeeUtilService;
	
	@Override
	public void createEmployee(EmployeeProfile employeeProfile) 
	{
		sessionFactory.getCurrentSession().save(employeeProfile);
	}

	@Override
	public void updateEmployee(EmployeeProfile employeeProfile) 
	{
		sessionFactory.getCurrentSession().update(employeeProfile);
		
	}

	@Override
	public List<EmployeeProfile> getAllEmployees() 
	{
		Session session               = null;
		EmployeeProfile empProfile    = null;
		List<EmployeeProfile> empProfileList = new ArrayList<EmployeeProfile>();
		
		long employId            = 0;
		String address           = "";
		Date dateOfBirth         = null;
		Date dateOfJoining       = null;
		int departmentId         = 0;
		int designationId        = 0;
		String emailId           = "";
		String empUserName       = "";
		String employCode        = "";
		String employeeName      = "";
		String phoeNumber        = "";
		String profilePicPath    = "";
		String skypeId           = "";
		String departmentName    = "";
		String designationName   = "";
		
		try 
		{
			session = sessionFactory.getCurrentSession();
			System.out.println("session :::::: "+session);
			Query query = session.createQuery("select e.empId,e.address,e.dateOfBirth,e.dateOfJoining,"
							+ " e.departmentId,e.designationId,e.emailId,e.empUserName,"
							+ " e.employCode,e.employeeName,e.phoeNumber,"
							+ " e.profilePicPath,e.skypeId"
							+ " from EmployeeProfile e");
			
			List<Object[]> empDetails = query.list();
			
			for(Object[] user : empDetails)
			{
				empProfile                =  new EmployeeProfile();
				
				employId                  = (long) user[0];
				address                   = (String) user[1];
				dateOfBirth               = (Date) user[2];
				dateOfJoining             = (Date) user[3];
				departmentId              = (int) user[4];
				designationId             = (int) user[5];
				emailId                   = (String) user[6];
				empUserName               = (String) user[7];
				employCode                = (String) user[8];
				employeeName              = (String) user[9];
				phoeNumber                = (String) user[10];
				profilePicPath            = (String) user[11];
				skypeId                   = (String) user[12];
				
				empProfile.setEmpId(employId);
				empProfile.setAddress(address);
				empProfile.setDateOfBirth(dateOfBirth);
				empProfile.setDateOfJoining(dateOfJoining);
				empProfile.setDepartmentId(departmentId);
				empProfile.setDesignationId(designationId);
				empProfile.setEmailId(emailId);
				empProfile.setEmpUserName(empUserName);
				empProfile.setEmployCode(employCode);
				empProfile.setEmployeeName(employeeName);
				empProfile.setPhoeNumber(phoeNumber);
				empProfile.setProfilePicPath(profilePicPath);
				empProfile.setSkypeId(skypeId);
				
				
				if(employeeUtilService.getDepartments(empProfile.getDepartmentId()) != null)
				{
					departmentName    = employeeUtilService.getDepartments(empProfile.getDepartmentId()).getDepartmentName();
					
				}
				
				if(employeeUtilService.getDesignations(empProfile.getDesignationId()) != null)
				{
					designationName   = employeeUtilService.getDesignations(empProfile.getDesignationId()).getDesignationName();
				}
				
				empProfile.setDepartmentName(departmentName);
				empProfile.setDesignationName(designationName);
				
				empProfileList.add(empProfile);
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return empProfileList;
	}

	@Override
	public EmployeeProfile findEmployeeByLoggedInUserId(long userId) 
	{
		Session session               = null;
		EmployeeProfile empProfile    = null;
		
		long employId            = 0;
		String address           = "";
		Date dateOfBirth         = null;
		Date dateOfJoining       = null;
		int departmentId         = 0;
		int designationId        = 0;
		String emailId           = "";
		String empUserName       = "";
		String employCode        = "";
		String employeeName      = "";
		String phoeNumber        = "";
		String profilePicPath    = "";
		String skypeId           = "";
		String departmentName    = "";
		String designationName   = "";
		
		try 
		{
			session = sessionFactory.getCurrentSession();
			System.out.println("session :::::: "+session);
			Query query = session.createQuery("select e.empId,e.address,e.dateOfBirth,e.dateOfJoining,"
							+ " e.departmentId,e.designationId,e.emailId,e.empUserName,"
							+ " e.employCode,e.employeeName,e.phoeNumber,"
							+ " e.profilePicPath,e.skypeId"
							+ " from EmployeeProfile e"
							+ " where e.empId = :userId ");
			query.setParameter("userId", userId);
			List<Object[]> empDetails = query.list();
			
			for(Object[] user : empDetails)
			{
				empProfile                =  new EmployeeProfile();
				
				employId                  = (long) user[0];
				address                   = (String) user[1];
				dateOfBirth               = (Date) user[2];
				dateOfJoining             = (Date) user[3];
				departmentId              = (int) user[4];
				designationId             = (int) user[5];
				emailId                   = (String) user[6];
				empUserName               = (String) user[7];
				employCode                = (String) user[8];
				employeeName              = (String) user[9];
				phoeNumber                = (String) user[10];
				profilePicPath            = (String) user[11];
				skypeId                   = (String) user[12];
				
				System.out.println("department id :::: "+departmentId+"::::  Designation ID :::: "+designationId);
				if(employeeUtilService.getDepartments(departmentId) != null)
				{
					departmentName    = employeeUtilService.getDepartments(departmentId).getDepartmentName();
					
				}
				
				if(employeeUtilService.getDesignations(designationId) != null)
				{
					designationName   = employeeUtilService.getDesignations(designationId).getDesignationName();
				}
				
				System.out.println("EmployeeProfileDaoImpl.findEmployeeByLoggedInUserId(departmentName) :::: "+departmentName);
				System.out.println("EmployeeProfileDaoImpl.findEmployeeByLoggedInUserId(designationName)::::  "+designationName);
				
				empProfile.setEmpId(employId);
				empProfile.setAddress(address);
				empProfile.setDateOfBirth(dateOfBirth);
				empProfile.setDateOfJoining(dateOfJoining);
				empProfile.setDepartmentId(departmentId);
				empProfile.setDesignationId(designationId);
				empProfile.setEmailId(emailId);
				empProfile.setEmpUserName(empUserName);
				empProfile.setEmployCode(employCode);
				empProfile.setEmployeeName(employeeName);
				empProfile.setPhoeNumber(phoeNumber);
				empProfile.setProfilePicPath(profilePicPath);
				empProfile.setSkypeId(skypeId);
				empProfile.setDepartmentName(departmentName);
				empProfile.setDesignationName(designationName);
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return empProfile;
	}

	@Override
	public String employeeCodeAutoGeneration() 
	{
		String empCode = "";
		try 
		{
			List<EmployeeProfile> employeeList = employeeList();
			
			int size = employeeList.size();
			
			empCode = "NAV - "+(size + 1);
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return empCode;
	}
	
	public List<EmployeeProfile> employeeList()
	{
		List<EmployeeProfile> empList = null;
		try
		{
			TypedQuery<EmployeeProfile> query = sessionFactory.getCurrentSession().createQuery("from EmployeeProfile");
			empList = query.getResultList();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return empList;
	}
}
