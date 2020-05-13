package com.navtech.controller.mainrequesents;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.navtech.dao.UserDao;
import com.navtech.dao.mainrequesents.EmployeeProfileDao;
import com.navtech.model.Departments;
import com.navtech.model.Designations;
import com.navtech.model.EmployeeProfile;
import com.navtech.model.Users;
import com.navtech.service.prerequesents.EmployeeUtilService;

@Controller
public class EmployeeProfileController 
{
	
	@Autowired
	private EmployeeProfileDao employeeProfileDao;
	
	@Autowired
	private EmployeeUtilService employeeUtilService;
	
	@Autowired
	private UserDao userDao;
	
	 private static String UPLOAD_LOCATION="C:/mytemp/";
	
	public String errorMessage = "";

	public String succsessMessage = "";
	
	@RequestMapping(value = "/employeeProfile" , method = RequestMethod.GET)
	public ModelAndView showEmployeeProfileView(ModelAndView model,@SessionAttribute("loginUser") Users loginUser ,@ModelAttribute EmployeeProfile employeeProfile, BindingResult result)
	{
		EmployeeProfile employeeExistProfile = employeeProfileDao.findEmployeeByLoggedInUserId(loginUser.getUserId());
		
		if(employeeExistProfile != null)
		{
			long employId            = employeeExistProfile.getEmpId();
			String address           = employeeExistProfile.getAddress();
			Date dateOfBirth         = employeeExistProfile.getDateOfBirth();
			Date dateOfJoining       = employeeExistProfile.getDateOfJoining();
			int departmentId         = employeeExistProfile.getDepartmentId();
			int designationId        = employeeExistProfile.getDesignationId();
			String emailId           = employeeExistProfile.getEmailId();
			String empUserName       = employeeExistProfile.getEmpUserName();
			String employCode        = employeeExistProfile.getEmployCode();
			String employeeName      = employeeExistProfile.getEmployeeName();
			String phoeNumber        = employeeExistProfile.getPhoeNumber();
			String profilePicPath    = employeeExistProfile.getProfilePicPath();
			String skypeId           = employeeExistProfile.getSkypeId();
			
			String departmentName    = employeeExistProfile.getDepartmentName();
			String designationName   = employeeExistProfile.getDesignationName();
			
			employeeProfile.setEmpId(employId);
			employeeProfile.setAddress(address);
			employeeProfile.setDateOfBirth(dateOfBirth);
			employeeProfile.setDateOfJoining(dateOfJoining);
			employeeProfile.setDepartmentId(departmentId);
			employeeProfile.setDesignationId(designationId);
			employeeProfile.setEmailId(emailId);
			
			if(employCode.trim().isEmpty() || employCode.trim().equals(""))
			{
				employeeProfile.setEmployCode(employeeProfileDao.employeeCodeAutoGeneration());
			}
			else
			{
				employeeProfile.setEmployCode(employCode);
			}
			
			employeeProfile.setEmployeeName(employeeName);
			employeeProfile.setEmpUserName(empUserName);
			employeeProfile.setPhoeNumber(phoeNumber);
			employeeProfile.setProfilePicPath(profilePicPath);
			employeeProfile.setSkypeId(skypeId);
			employeeProfile.setDepartmentName(departmentName);
			employeeProfile.setDesignationName(designationName);
		}
		model.addObject("employeeProfile", employeeProfile);
		model.addObject("departmentList", listOfDepartments(employeeProfile.getDepartmentId(),userDao.findRoleIdByUser(loginUser.getUserId())));
		model.addObject("designationsList", listOfDesignations(employeeProfile.getDesignationId(),userDao.findRoleIdByUser(loginUser.getUserId())));
		
		model.addObject("errorMessage", errorMessage);
		model.addObject("successMessage", succsessMessage);
		model.addObject("userRoleId",userDao.findRoleIdByUser(loginUser.getUserId()));
		
		errorMessage = "";
		succsessMessage = "";
		
		model.setViewName("users_view/employee_profile");
		return model;
	}
	
	@RequestMapping(value = "/saveEmployee")
	public ModelAndView createEmployeeProfile(@ModelAttribute EmployeeProfile employeeProfile, BindingResult result)
	{ 
		try 
		{
			if(employeeProfile.getEmpId() == 0)
			{
				succsessMessage = "Saved Successfully";
				employeeProfileDao.createEmployee(employeeProfile);
			} 
			else
			{
				succsessMessage = "Updated Successfully";
				employeeProfileDao.updateEmployee(employeeProfile);			
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return new ModelAndView("redirect:employeeProfile");
	}
	
	@RequestMapping(value="/employeeListView", method = RequestMethod.GET)
	public ModelAndView showEmployeeListView(ModelAndView model)
	{
		model.addObject("employeeProfileList", employeeProfileDao.getAllEmployees());
		model.setViewName("main_requsents/employeeList");
		return model;
	}
	
	@RequestMapping(value="/editEmployeeProfile", method = RequestMethod.GET)
	public ModelAndView editEmployeeProfileDetails(@RequestParam long empId,ModelAndView model,@SessionAttribute("loginUser") Users loginUser,
			@ModelAttribute EmployeeProfile employeeProfile,BindingResult result)
	{
		employeeProfile = employeeProfileDao.findEmployeeByLoggedInUserId(empId);
		
		model.addObject("employeeProfile", employeeProfile);
		model.addObject("employeeProfileList", employeeProfileDao.getAllEmployees());
		model.addObject("userRoleId",userDao.findRoleIdByUser(loginUser.getUserId()));
		
		model.addObject("departmentList", listOfDepartments(employeeProfile.getDepartmentId(),userDao.findRoleIdByUser(loginUser.getUserId())));
		model.addObject("designationsList", listOfDesignations(employeeProfile.getDesignationId(),userDao.findRoleIdByUser(loginUser.getUserId())));
		
		model.setViewName("users_view/employee_profile");
		
		return model;
	}
	
	
	//Departments List
	public List<Departments> listOfDepartments(int departmentId,int roleId)
	{
		List<Departments> listOfDepartments = new ArrayList<Departments>();
		if(roleId == 1)
		{
			listOfDepartments = employeeUtilService.getAllDepartments();
		}
		else
		{
			if(departmentId > 0)
			{
				listOfDepartments = employeeUtilService.getAllDepartments();
			}
		}
		return listOfDepartments; 
	}
	
	//Designations List
	public List<Designations> listOfDesignations(int designationId,int roleId)
	{
		List<Designations> listOfDesignations = new ArrayList<Designations>();
		
		if(roleId == 1)
		{
			listOfDesignations = employeeUtilService.getAllDesignations();
		}
		else
		{
			if(designationId > 0)
			{
				listOfDesignations = employeeUtilService.getAllDesignations();
			}
		}
		return listOfDesignations;
		
	}	
}
