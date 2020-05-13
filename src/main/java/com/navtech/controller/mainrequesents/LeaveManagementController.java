package com.navtech.controller.mainrequesents;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.navtech.dao.UserDao;
import com.navtech.dao.mainrequesents.EmployeeProfileDao;
import com.navtech.dao.mainrequesents.LeaveManagementDao;
import com.navtech.model.EmployeeProfile;
import com.navtech.model.LeaveRequest;
import com.navtech.model.Users;
import com.navtech.service.prerequesents.EmployeeUtilService;

@Controller
public class LeaveManagementController 
{
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private EmployeeUtilService employeeUtilService;
	
	@Autowired
	private LeaveManagementDao leaveManagementDao;
	
	@Autowired
	private EmployeeProfileDao employeeProfileDao;
	
	@RequestMapping(value = "/showLeaveRequest", method = RequestMethod.GET)
	public ModelAndView showLeaveRequestView(ModelAndView model,@ModelAttribute LeaveRequest leaveRequest,BindingResult result)
	{
		model.addObject("leaveRequest", leaveRequest);
		model.addObject("leaveRequestList",leaveManagementDao.leaveReuestsList());
		model.setViewName("main_requsents/leaverequest");
		return model;
	}
	
	@RequestMapping(value = "/sendLeaveRequest", method = RequestMethod.POST)
	public ModelAndView sendLeaveRequest(ModelAndView model,@ModelAttribute LeaveRequest leaveRequest,BindingResult result,@SessionAttribute("loginUser") Users users)
	{
		int departmentId   = employeeProfileDao.findEmployeeByLoggedInUserId(users.getUserId()).getDepartmentId();
		int designationId = employeeProfileDao.findEmployeeByLoggedInUserId(users.getUserId()).getDesignationId();
		String employCode = employeeProfileDao.findEmployeeByLoggedInUserId(users.getUserId()).getEmployCode();
		String employName = employeeProfileDao.findEmployeeByLoggedInUserId(users.getUserId()).getEmployeeName();
		
		leaveRequest.setDepartmentId(departmentId);
		leaveRequest.setDesignationId(designationId);
		leaveRequest.setLeaveStatus("Pending");
		leaveRequest.setEmployCode(employCode);
		leaveRequest.setEmployName(employName);
		leaveRequest.setEmployId(users.getUserId());
		System.out.println("Leave Requst ::: "+leaveRequest);
		leaveManagementDao.sendLeaveRequest(leaveRequest);
		return new ModelAndView("redirect:showLeaveRequest");
	}
	
	
	@RequestMapping(value = "/showLeaveApproval", method = RequestMethod.GET)
	public ModelAndView showLeaveApprovalView(ModelAndView model,@ModelAttribute LeaveRequest leaveApproval,BindingResult result)
	{
		model.addObject("leaveApproval", leaveApproval);
		model.setViewName("main_requsents/leaveapproval");
		return model;
	}
}
