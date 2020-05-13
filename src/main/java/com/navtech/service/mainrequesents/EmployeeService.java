package com.navtech.service.mainrequesents;

import java.util.List;

import com.navtech.model.Employee;

/**
 * @author Ranga Reddy
 * @version 1.0
 */
public interface EmployeeService {
	public void createEmployee(Employee employee);
    public void updateEmployee(Employee employee);
    public Employee getEmployee(long id);	
    public List<Employee> getAllEmployees();
    
	public List<Employee> getAllEmployees(String employeeName);
	public void deleteEmployee(long id);
}
