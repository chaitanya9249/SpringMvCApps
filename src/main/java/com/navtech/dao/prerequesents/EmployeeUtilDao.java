package com.navtech.dao.prerequesents;

import java.util.List;

import com.navtech.model.Departments;
import com.navtech.model.Designations;
import com.navtech.model.HolidaysList;

public interface EmployeeUtilDao 
{
	//Departments
	public void createDepartments(Departments departments);
	public void updateDepartments(Departments departments);
	public List<Departments> getAllDepartments();
	public Departments getDepartments(int id);
	public void deleteDepartment(int id);
	
	public int existDepartment(Departments departments);
	public String departmentCodeAutoGeneration();

	//Designations
	public void createDesignations(Designations designations);
	public void updateDesignations(Designations designations);
	public List<Designations> getAllDesignations();
	public Designations getDesignations(int id);
	public void deleteDesignations(int id);
	
	public int existDesignation(Designations designations);
	public String designationCodeAutoGeneration();


	//Holidays
	public void createHolidaysList(HolidaysList holidaysList);
	public void updateHolidays(HolidaysList holidaysList);
	public List<HolidaysList> getAllHolidaysList();
	public HolidaysList getHolidaysList(int id);
	public void deleteHolidaysList(int id);
	
	public int existHoliday(HolidaysList holidayList);
}
