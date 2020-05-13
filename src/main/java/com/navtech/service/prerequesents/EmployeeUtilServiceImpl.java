package com.navtech.service.prerequesents;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.navtech.dao.prerequesents.EmployeeUtilDao;
import com.navtech.model.Departments;
import com.navtech.model.Designations;
import com.navtech.model.HolidaysList;

@Service
@Transactional
public class EmployeeUtilServiceImpl implements EmployeeUtilService
{
	public EmployeeUtilServiceImpl()
	{
		System.out.println(":::::::::: EmployeeUtilServiceImpl ::::::::::");
	}

	@Autowired
	private EmployeeUtilDao employeeUtilDao;

	@Override
	public void createDepartments(Departments departments) 
	{
		employeeUtilDao.createDepartments(departments);
	}

	@Override
	public Departments getDepartments(int id) 
	{
		return employeeUtilDao.getDepartments(id);
	}

	@Override
	public void updateDepartments(Departments departments) 
	{
		employeeUtilDao.updateDepartments(departments);
	}

	@Override
	public void deleteDepartment(int id) 
	{
		employeeUtilDao.deleteDepartment(id);
	}

	@Override
	public List<Departments> getAllDepartments() 
	{
		return employeeUtilDao.getAllDepartments();
	}

	@Override
	public int existDepartment(Departments departments)
	{
		int size = employeeUtilDao.existDepartment(departments);
		return size;
	}

	@Override
	public void createDesignations(Designations designations) 
	{
		employeeUtilDao.createDesignations(designations);
	}

	@Override
	public Designations getDesignations(int id) 
	{
		return employeeUtilDao.getDesignations(id);
	}

	@Override
	public void updateDesignations(Designations designations) {

		employeeUtilDao.updateDesignations(designations);
	}

	@Override
	public void deleteDesignations(int id) 
	{

	}

	@Override
	public List<Designations> getAllDesignations() 
	{
		return employeeUtilDao.getAllDesignations();
	}

	/****************************HOLIDAYS**************************************/
	@Override
	public void createHolidaysList(HolidaysList holidaysList) 
	{
		employeeUtilDao.createHolidaysList(holidaysList);
	}

	@Override
	public HolidaysList getHolidaysList(int id) 
	{
		return employeeUtilDao.getHolidaysList(id);
	}

	@Override
	public void updateHolidays(HolidaysList holidaysList) 
	{
		employeeUtilDao.updateHolidays(holidaysList);
	}

	@Override
	public void deleteHolidaysList(int id) 
	{

	}

	@Override
	public List<HolidaysList> getAllHolidaysList() 
	{
		return employeeUtilDao.getAllHolidaysList();
	}

	@Override
	public String departmentCodeAutoGeneration() 
	{
		return employeeUtilDao.departmentCodeAutoGeneration();
	}

	@Override
	public String designationCodeAutoGeneration() 
	{
		return employeeUtilDao.designationCodeAutoGeneration();
	}

	@Override
	public int existDesignation(Designations designations) 
	{

		return employeeUtilDao.existDesignation(designations);
	}

	@Override
	public int existHoliday(HolidaysList holidayList) 
	{
		return employeeUtilDao.existHoliday(holidayList);
	}
}
