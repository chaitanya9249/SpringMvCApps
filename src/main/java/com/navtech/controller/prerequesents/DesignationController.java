package com.navtech.controller.prerequesents;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.navtech.model.Departments;
import com.navtech.model.Designations;
import com.navtech.service.prerequesents.EmployeeUtilService;

@Controller
public class DesignationController 
{

	@Autowired
	private EmployeeUtilService employeeUtilService;

	
	public String errorMessage = "";
	
	public String succsessMessage = "";

	@RequestMapping(value = "/designationsView", method = RequestMethod.GET)
	public ModelAndView createDesignations(@ModelAttribute Designations designation, BindingResult result) 
	{
		Map<String, Object> mapModel = new HashMap<String, Object>();
		mapModel.put("departmentList", listOfDepartments());
		mapModel.put("designationsList", listOfDesignations());
		
		designation.setDesignationCode(employeeUtilService.designationCodeAutoGeneration());
		
		mapModel.put("designation", designation);
		
		mapModel.put("errorMessage", errorMessage);
		mapModel.put("successMessage", succsessMessage);
		
		errorMessage    = "";
		
		succsessMessage = "";
		
		return new ModelAndView("pre_requesents_view/designations",mapModel);
	}
	
	@RequestMapping(value = "/designationSave", method = RequestMethod.POST)
	public ModelAndView saveDesignations(@ModelAttribute Designations designation, BindingResult result)
	{
		
		if(employeeUtilService.existDesignation(designation) > 0)
		{
			errorMessage = designation.getDesignationName()+" is already existed."+" \n "+" Duplicates are not allowed";
		}
		else
		{
			if(designation.getDesignationId() == 0)
			{
				succsessMessage = "Saved Successfully";
				employeeUtilService.createDesignations(designation);
			}
			else
			{
				succsessMessage = "Updated Successfully";
				employeeUtilService.updateDesignations(designation);
			}
		}
		return new ModelAndView("redirect:designationsView");
	}
	
	@RequestMapping(value = "/editDesignations", method = RequestMethod.GET)
	public ModelAndView editDesignations(@RequestParam int designationId,@ModelAttribute Designations designation)
	{
		Map<String, Object> designationsMapModal = new HashMap<String,Object>();
		designation = employeeUtilService.getDesignations(designationId);
		designationsMapModal.put("departmentList", listOfDepartments());
		designationsMapModal.put("designationsList", listOfDesignations());
		designationsMapModal.put("desgStatusvalue", designation.getDesignationStatus());
		designationsMapModal.put("designation", designation);
		return new ModelAndView("pre_requesents_view/designations", designationsMapModal);
	}
	
	
	//Departments List
	public List<Departments> listOfDepartments()
	{
		List<Departments> listOfDepartments = employeeUtilService.getAllDepartments();
		return listOfDepartments;
	}
	
	//Designations List
	public List<Designations> listOfDesignations()
	{
		List<Designations> listOfDesignations = employeeUtilService.getAllDesignations();
		return listOfDesignations;
		
	}
}
