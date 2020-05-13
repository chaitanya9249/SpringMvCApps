package com.navtech.dao.prerequesents;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.navtech.model.Departments;
import com.navtech.model.Designations;
import com.navtech.model.HolidaysList;

@Repository
public class EmployeeUtilDaoImpl implements EmployeeUtilDao
{
	public EmployeeUtilDaoImpl()
	{
		System.out.println("Employee Util Dao");
	}

	
	@Autowired
	private SessionFactory sessionFactory;


	/*****************************Departments************************************/
	//Save
	@Override
	public void createDepartments(Departments departments) 
	{
		sessionFactory.getCurrentSession().save(departments);//(int) hibernateUtil.create(departments);
	}

	//Edit
	@Override
	public Departments getDepartments(int id) 
	{
		return sessionFactory.getCurrentSession().get(Departments.class, id);
	}

	//Update
	@Override
	public void updateDepartments(Departments departments) 
	{
		sessionFactory.getCurrentSession().update(departments);
	}

	//Delete
	@Override
	public void deleteDepartment(int id) 
	{
	}

	//List
	@Override
	public List<Departments> getAllDepartments() 
	{
		List<Departments> list = sessionFactory.getCurrentSession().createQuery("from Departments").getResultList();
		return list;
	}


	/***************************Designations************************************/
	@Override
	public void createDesignations(Designations designations) 
	{
		sessionFactory.getCurrentSession().save(designations);
	}

	@Override
	public Designations getDesignations(int id) 
	{
		return sessionFactory.getCurrentSession().get(Designations.class,id);
	}

	@Override
	public void updateDesignations(Designations designations) 
	{
		sessionFactory.getCurrentSession().update(designations);
	}

	@Override
	public void deleteDesignations(int id) 
	{
		//Delete Designations
	}

	@Override
	public List<Designations> getAllDesignations() 
	{
		//Prep work
		Session session               = null;
		List<Designations> designationsList = new ArrayList<Designations>();
		//Transaction tx                = null;
		try 
		{
			session = sessionFactory.getCurrentSession();

			//HQL example - Get All Designations
			//tx = session.beginTransaction();
			Query query = session.createQuery("select desg.designationId,desg.departmentId,dept.departmentName,desg.designationName,"
					+ "desg.designationStatus,desg.designationCode from Designations desg, Departments dept "
					+ "where desg.departmentId = dept.departmentId ORDER BY desg.designationId");
			
			List<Object[]> designationsData = query.list();
			for(Object[] desgs : designationsData)
			{
				Designations designations = new Designations();
				designations.setDesignationId((Integer) desgs[0]);
				designations.setDepartmentId((Integer) desgs[1]);
				designations.setDepartmentName((String) desgs[2]);
				designations.setDesignationName((String) desgs[3]);
				designations.setDesignationStatus((String) desgs[4]);
				designations.setDesignationCode((String) desgs[5]);
				designationsList.add(designations);
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return designationsList;/*hibernateUtil.fetchAll(Designations.class);*/
	}

	/****************************Holidays*******************************/
	@Override
	public void createHolidaysList(HolidaysList holidaysList) 
	{
		sessionFactory.getCurrentSession().save(holidaysList);
	}

	@Override
	public HolidaysList getHolidaysList(int id) 
	{
		return sessionFactory.getCurrentSession().get(HolidaysList.class,id);
	}

	@Override
	public void updateHolidays(HolidaysList holidaysList) 
	{
		sessionFactory.getCurrentSession().update(holidaysList);
	}

	@Override
	public void deleteHolidaysList(int id) 
	{
		//Delete holidays
	}

	@Override
	public List<HolidaysList> getAllHolidaysList() 
	{
		@SuppressWarnings("unchecked")
		List<HolidaysList> list = sessionFactory.getCurrentSession().createQuery("from HolidaysList").getResultList();
		return list;
	}
	
	
	@Override
	public int existDepartment(Departments departments)
	{
		Session session               = null;
		
		int listSize = 0;
		try 
		{
			session = sessionFactory.getCurrentSession();

			//HQL example - Get All Designations
			//tx = session.beginTransaction();
			Query query = session.createQuery("select d.departmentName from Departments d where d.departmentId != :deptId and d.departmentName = :deptName ");
			query.setParameter("deptId", departments.getDepartmentId());
			query.setParameter("deptName", departments.getDepartmentName());
			
			System.out.println("Exist condtion query ::: "+query.getQueryString());
			
			List<Object[]> departmentNameDuplicateList = query.list();
			listSize = departmentNameDuplicateList.size();

		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}

		return listSize;
	}
	@Override
	public int existDesignation(Designations designations) 
	{
		Session session               = null;
		
		int listSize = 0;
		try 
		{
			session = sessionFactory.getCurrentSession();
			
			Query query = session.createQuery("select d.designationName from Designations d where d.designationId != :desgId and d.designationName = :desgName");
			
			query.setParameter("desgId", designations.getDesignationId());
			query.setParameter("desgName", designations.getDesignationName());
			
			System.out.println("Exist condtion query ::: "+query.getQueryString());
			
			List<Object[]> designationNameDuplicateList = query.list();
			listSize = designationNameDuplicateList.size();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return listSize;
	}
	
	@Override
	public int existHoliday(HolidaysList holidayList) 
	{
		Session session               = null;
		
		int listSize = 0;
		try 
		{
			session = sessionFactory.getCurrentSession();
			
			Query query = session.createQuery("select h.holidayName from HolidaysList h where h.holidaysId != :holidayIdVal and h.holidayName = :holidayNameVal");
			
			query.setParameter("holidayIdVal", holidayList.getHolidaysId());
			query.setParameter("holidayNameVal", holidayList.getHolidayName());
			
			System.out.println("Exist condtion query ::: "+query.getQueryString());
			
			List<Object[]> holidaysNameDuplicateList = query.list();
			listSize = holidaysNameDuplicateList.size();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return listSize;
	}

	@Override
	public String departmentCodeAutoGeneration() 
	{
		List<Departments> deptList = getAllDepartments();
		
		int size = deptList.size();
		
		String deptCode = "DEPT - "+(size + 1);
		
		return deptCode;
	}

	@Override
	public String designationCodeAutoGeneration()
	{
		List<Designations> desgList = getAllDesignations();

		int size = desgList.size();

		String desgCode = "DESG - "+(size + 1);

		return desgCode;
	}

}
