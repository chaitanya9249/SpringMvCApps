/**
 * 
 */
package com.navtech.dao.mainrequesents;

import java.util.List;

import com.navtech.model.Employee;

/**
 * @author Ranga Reddy
 * @version 1.0
 */
public interface EmployeeDAO 
{
	public void createEmployee(Employee employee);
	public void updateEmployee(Employee employee);
	public List<Employee> getAllEmployees(String employeeName);
    public List<Employee> getAllEmployees();
    public Employee getEmployee(long id);
	public void deleteEmployee(long id);
}
