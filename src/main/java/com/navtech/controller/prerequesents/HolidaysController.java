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

import com.navtech.model.HolidaysList;
import com.navtech.service.prerequesents.EmployeeUtilService;

@Controller
public class HolidaysController 
{
	
	@Autowired
	private EmployeeUtilService employeeUtilService;
	
	public String errorMessage = "";

	public String succsessMessage = "";
	
	@RequestMapping(value="/showHolidays", method = RequestMethod.GET)
	public ModelAndView createHoliday(ModelAndView model,@ModelAttribute HolidaysList holidays, BindingResult result) 
	{
		model.addObject("holidays", holidays);
		model.addObject("listOfHolidays", listOfHolidays());
		
		model.addObject("errorMessage", errorMessage);
		model.addObject("successMessage", succsessMessage);
		
		errorMessage = "";
		succsessMessage = "";

		model.setViewName("pre_requesents_view/holidays");
		
		return model;
	}
	
	@RequestMapping(value = "/saveHoliday", method = RequestMethod.POST)
	public ModelAndView saveHolidays(@ModelAttribute HolidaysList holidaysList, BindingResult result)
	{
		if(employeeUtilService.existHoliday(holidaysList) > 0)
		{
			errorMessage = holidaysList.getHolidayName()+" is already existed."+" \n "+" Duplicates are not allowed";
		}
		else
		{
			if(holidaysList.getHolidaysId() == 0)
			{
				succsessMessage = "Saved Successfully";
				employeeUtilService.createHolidaysList(holidaysList);
			}
			else
			{
				succsessMessage = "Updated Successfully";
				employeeUtilService.updateHolidays(holidaysList);
			}
		}
		return new ModelAndView("redirect:showHolidays");
	}
	
	@RequestMapping(value = "/editHolidays", method = RequestMethod.GET)
	public ModelAndView editDepartments(@RequestParam int holidaysId,@ModelAttribute HolidaysList holidaysList)
	{
		Map<String, Object> holidaysMapModal = new HashMap<String,Object>();
		try 
		{
			holidaysList = employeeUtilService.getHolidaysList(holidaysId);
			holidaysMapModal.put("listOfHolidays", listOfHolidays());
			holidaysMapModal.put("holidays", holidaysList);
			holidaysMapModal.put("holidayStatusVal", holidaysList.getHolidayStatus());
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return new ModelAndView("pre_requesents_view/holidays", holidaysMapModal);
	}
	
	
	//List of holidays
	public List<HolidaysList> listOfHolidays()
	{
		List<HolidaysList> listOfHolidays = employeeUtilService.getAllHolidaysList();
		return listOfHolidays;
	}
}
