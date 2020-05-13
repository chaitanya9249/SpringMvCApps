package com.navtech.controller.prerequesents;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.navtech.dao.prerequesents.LeaveCountDao;
import com.navtech.model.Departments;
import com.navtech.model.LeaveCount;
import com.navtech.service.prerequesents.EmployeeUtilService;

@Controller
public class LeaveCountController 
{
	@Autowired
	private LeaveCountDao leaveCountDao;
	
	@Autowired
	private EmployeeUtilService employeeUtilService;
	
	public String errorMessage = "";

	public String succsessMessage = "";
	
	//View
	@RequestMapping(value = "/leaveCountView" , method = RequestMethod.GET)
	public ModelAndView showLeaveCount(ModelAndView model,@ModelAttribute LeaveCount leaveCount,BindingResult bindingResult)
	{
		model.addObject("leaveCount", leaveCount);
		model.addObject("departmentList",listOfDepartments());
		model.addObject("leaveCountList", leaveCountDao.listOfLeaveCount());
		model.setViewName("pre_requesents_view/leaveCount");
		
		model.addObject("errorMessage", errorMessage);
		model.addObject("successMessage", succsessMessage);
		
		errorMessage = "";
		succsessMessage = "";
		
		return model;
	}
	
	//Save
	@RequestMapping(value = "/saveLeaveCount" , method = RequestMethod.POST)
	public ModelAndView saveLeaveCount(@ModelAttribute LeaveCount leaveCount,BindingResult bindingResult)
	{
	
		if(leaveCountDao.existLeaveCountToDepartment(leaveCount) > 0)
		{
			errorMessage = leaveCount.getDepartmentName()+" is already existed."+" \n "+" Duplicates are not allowed";
		}
		else
		{
			if(leaveCount.getLeaveId() > 0)
			{
				succsessMessage = "Updated Successfully";
				leaveCountDao.updateLeaveCount(leaveCount);
			}
			else
			{
				succsessMessage = "Saved Successfully";
				leaveCountDao.saveLeaveCount(leaveCount);
			}
		}
		
		return new ModelAndView("redirect:leaveCountView");
	}
	
	//Edit
	@RequestMapping(value = "/editLeaveCount" , method = RequestMethod.GET)
	public ModelAndView getLeaveCount(@RequestParam int leaveId,ModelAndView model,@ModelAttribute LeaveCount leaveCount,BindingResult bindingResult)
	{
		leaveCount = leaveCountDao.getLeaveCountDetails(leaveId);
		model.addObject("leaveCount", leaveCount);
		model.addObject("departmentList",listOfDepartments());
		model.addObject("leaveCountList", leaveCountDao.listOfLeaveCount());
		model.setViewName("pre_requesents_view/leaveCount");
		return model;
	}
	
	public List<Departments> listOfDepartments()
	{
		List<Departments> listOfDepartments = employeeUtilService.getAllDepartments();
		return listOfDepartments;
	}
}
