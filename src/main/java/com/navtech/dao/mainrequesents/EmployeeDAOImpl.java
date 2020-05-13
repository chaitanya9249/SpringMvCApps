/**
 * 
 */
package com.navtech.dao.mainrequesents;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.navtech.model.Employee;

/**
 * @author Ranga Reddy
 * @version 1.0
 */

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
    
	
	@Autowired
	private SessionFactory sessionFactory;

    @Override
    public void createEmployee(Employee employee) {        
        sessionFactory.getCurrentSession().save(employee);
    }
    
    @Override
    public void updateEmployee(Employee employee) {        
    	sessionFactory.getCurrentSession().update(employee);
    }
    
    @Override
    public void deleteEmployee(long id) 
    {
    	
    }
    
    @Override
    public List<Employee> getAllEmployees() 
    {        
        return sessionFactory.getCurrentSession().createQuery("from Employee").getResultList();
    }
    
    @Override
    public Employee getEmployee(long id) 
    {
        return sessionFactory.getCurrentSession().get(Employee.class,id);
    }

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> getAllEmployees(String employeeName) { 
		String query = "SELECT e.* FROM Employees e WHERE e.name like '%"+ employeeName +"%'";
		List<Object[]> employeeObjects = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		List<Employee> employees = new ArrayList<Employee>();
		for(Object[] employeeObject: employeeObjects) {
			Employee employee = new Employee();
			long id = ((BigInteger) employeeObject[0]).longValue();			
			int age = (int) employeeObject[1];
			String name = (String) employeeObject[2];
			float salary = (float) employeeObject[3];
			employee.setId(id);
			employee.setName(name);
			employee.setAge(age);
			employee.setSalary(salary);
			employees.add(employee);
		}
		System.out.println(employees);
		return employees;
	}
}