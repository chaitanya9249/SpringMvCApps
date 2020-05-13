package com.navtech.dao.mainrequesents;

import java.util.List;

import com.navtech.model.Employee;
import com.navtech.model.EmployeeProfile;

public interface EmployeeProfileDao 
{
	
	public void createEmployee(EmployeeProfile employeeProfile);
    public void updateEmployee(EmployeeProfile employeeProfile);
    public List<EmployeeProfile> getAllEmployees();
    
    public EmployeeProfile findEmployeeByLoggedInUserId(long userId);
    public String employeeCodeAutoGeneration();
}
