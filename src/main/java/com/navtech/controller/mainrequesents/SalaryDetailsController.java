package com.navtech.controller.mainrequesents;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.navtech.model.SalaryDetails;

@Controller
public class SalaryDetailsController 
{
	
	public ModelAndView showSalaryDetails(ModelAndView model,@ModelAttribute SalaryDetails salary)
	{
		model.addObject("salary", salary);
		model.setViewName("main_requsents/salarydetails");
		return model;
	}
}
