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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.navtech.dao.UserDao;
import com.navtech.model.Departments;
import com.navtech.model.UserRegistration;
import com.navtech.model.Users;
import com.navtech.service.prerequesents.EmployeeUtilService;

@Controller
public class DepartmentsController 
{
	public DepartmentsController() 
	{
		System.out.println("Department Controller");
	}

	public String errorMessage = "";
	
	public String succsessMessage = "";
	
	@Autowired
	private EmployeeUtilService employeeUtilService;
	
	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "/departmentsView" , method = RequestMethod.GET)
	public ModelAndView showDepartmentsPage(ModelAndView model,@SessionAttribute("loginUser") Users loginUser ,@ModelAttribute Departments department,BindingResult result ) 
	{
		
		System.out.println("DepartmentsController.viewDepartment()");
		
		department.setDepartmentCode(employeeUtilService.departmentCodeAutoGeneration());
		
		model.addObject("department", department);
		model.addObject("deptList", employeeUtilService.getAllDepartments());
		
		model.addObject("errorMessage", errorMessage);
		model.addObject("successMessage", succsessMessage);
		 
		System.out.println("***********SESSION CONTENT start*************");
		System.out.println("ID :::::::: "+loginUser.getUserId());
		System.out.println("Email :::::::: "+loginUser.getUsername());
		System.out.println("Password :::::::: "+loginUser.getPassword());
		System.out.println("***********SESSION CONTENT END *************");
		
		errorMessage = "";
		succsessMessage = "";
		
		model.setViewName("pre_requesents_view/departments");
		
		return model;
	}

	@RequestMapping(value = "/saveDepartments", method = RequestMethod.POST)
	public ModelAndView saveDepartments(@ModelAttribute Departments department, BindingResult result)
	{
		System.out.println("departments.getDepartmentId() ::::: "+department.getDepartmentId());
		
		if(employeeUtilService.existDepartment(department) > 0)
		{
			errorMessage = department.getDepartmentName()+" is already existed."+" \n "+" Duplicates are not allowed";
		}
		else
		{
			if(department.getDepartmentId() == 0)
			{
				succsessMessage = "Saved Successfully";
				employeeUtilService.createDepartments(department);
				
			}
			else
			{
				succsessMessage = "Updated Successfully";
				employeeUtilService.updateDepartments(department);
			}
		}
		return new ModelAndView("redirect:departmentsView");
	}

	@RequestMapping(value = "/editDepartments", method = RequestMethod.GET)
	public ModelAndView editDepartments(@RequestParam int departmentId,@ModelAttribute Departments department)
	{
		Map<String, Object> departmentsMapModal = null;
		try 
		{
			departmentsMapModal = new HashMap<String,Object>();
			department = employeeUtilService.getDepartments(departmentId);
			departmentsMapModal.put("deptList", listOfDepartments());
			departmentsMapModal.put("deptStatusValue", department.getDepartmentStatus());
			departmentsMapModal.put("department", department);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return new ModelAndView("pre_requesents_view/departments", departmentsMapModal);
	}

	public List<Departments> listOfDepartments()
	{
		List<Departments> listOfDepartments = employeeUtilService.getAllDepartments();
		return listOfDepartments;
	}
	
}
