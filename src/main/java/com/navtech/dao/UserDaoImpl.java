package com.navtech.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.navtech.dao.mainrequesents.EmployeeProfileDao;
import com.navtech.model.EmployeeProfile;
import com.navtech.model.RolesData;
import com.navtech.model.UserRegistration;
import com.navtech.model.User_Roles;
import com.navtech.model.Users;

@Repository
@Transactional
public class UserDaoImpl implements UserDao
{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private EmployeeProfileDao employeeProfileDao;

	@Override
	public void saveUserData(UserRegistration registration,User_Roles userRoles,Users users) 
	{
		String username = registration.getEmpEmail();
		String name = registration.getEmployeeName();
		sessionFactory.getCurrentSession().save(registration);
		
		int userId = registration.getId();
		System.out.println("userid ::::: "+userId);
		
		EmployeeProfile employeeProfile = new EmployeeProfile();
		System.out.println("");
		employeeProfile.setEmployCode(employeeProfileDao.employeeCodeAutoGeneration());
		employeeProfile.setEmpUserName(username);
		employeeProfile.setEmployeeName(name);
		sessionFactory.getCurrentSession().save(employeeProfile);
		
		users.setUsername(username);
		users.setPassword(registration.getEmpPassword());
		
		Session session               = null;
		int usersExistSize            = 0;
		try 
		{
			session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from UserRegistration");
			List<Object[]> usersData = query.list();
			usersExistSize = usersData.size();
			
			if(usersExistSize == 1)
			{
				userRoles.setUserId(userId);
				userRoles.setUser_role_id(1);
				users.setRoleId(1);
				sessionFactory.getCurrentSession().save(userRoles);
			}
			else
			{
				userRoles.setUserId(userId);
				userRoles.setUser_role_id(2);
				users.setRoleId(2);
				sessionFactory.getCurrentSession().save(userRoles);
			}
			
			sessionFactory.getCurrentSession().save(users);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
	}

	@Override
	public Users loginAuthentication(Users users) 
	{
		Session session               = null;
		try 
		{
			session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("select u.userId,u.username,u.password from Users u "
					+ "where u.username = :uname and u.password = :pwd");
			
			query.setParameter("uname", users.getUsername()); 
			query.setParameter("pwd", users.getPassword());
			
			List<Object[]> usersData = query.list();
			
			
			for(Object[] user : usersData)
			{
				users.setUserId((int) user[0]);
				users.setUsername((String) user[1]);
				users.setPassword((String) user[2]);
				users.setRoleId(findRoleIdByUser(users.getUserId()));
			}
			System.out.println("USER ID ::::: "+users.getUserId()+" :::::::: Role whle login ::::::::: "+findRoleIdByUser(users.getUserId()));
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return users;
	}

	@Override
	public void saveRoles() 
	{
		Session session               = null;
		int rolesListSize             = 0;
		try 
		{
			session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from RolesData");
			List<Object[]> rolesDataList = query.list();
			rolesListSize = rolesDataList.size();

			
			System.out.println("rolesListSize ::::: "+rolesListSize);
			if(rolesListSize == 0)
			{
				List<String> rolesList = new ArrayList<String>();

				rolesList.add("ROLE_ADMIN");
				rolesList.add("ROLE_USER");

				for (int i = 0; i < rolesList.size(); i++) 
				{
					RolesData rolesData = new RolesData();
					rolesData.setRoleName(rolesList.get(i));
					sessionFactory.getCurrentSession().save(rolesData);
				}
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	@Override
	public int existedUser(UserRegistration users) 
	{
		Session session               = null;
		int usersExistSize            = 0;
		try 
		{
			session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from UserRegistration u where u.empEmail = :uname and u.empPassword = :pwd");
			
			System.out.println("username ::::  "+users.getEmpEmail()+" password ::::: "+users.getEmpPassword());
			
			query.setParameter("uname", users.getEmpEmail()); 
			query.setParameter("pwd", users.getEmpPassword());
			
			List<Object[]> usersData = query.list();
			usersExistSize = usersData.size();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return usersExistSize;
	}

	@Override
	public int findRoleIdByUser(int userId) 
	{

		Session session               = null;
		int     roleId                = 0;
		try 
		{
			session = sessionFactory.getCurrentSession();

			Query query = session.createQuery("select u.user_role_id from User_Roles u where u.userId = :uId");
			query.setParameter("uId", userId); 
			
			List<Object[]> roleList = query.list(); 
			
			for (int i = 0; i < roleList.size(); i++) 
			{
				roleId = Integer.parseInt(String.valueOf(roleList.get(0)));
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return roleId;
	}

	/*@Override
	public EmployeeProfile findEmployeeDetailsById(int userId) 
	{
		Session session               = null;
		String employCode = "";
		String employName = "";
		int departmentId = 0;
		int designationId = 0;
		String username = "";
		EmployeeProfile empProfile = null;
		
		try 
		{
			session = sessionFactory.getCurrentSession();

			Query query = session.createQuery("select u.employCode,u.employeeName,u.departmentId,u.designationId,u.empUserName from User_Roles u"
					+ " where u.userId = :uId");
			query.setParameter("uId", userId); 
			
			List<Object[]> empList = query.list(); 
			
			for (int i = 0; i < empList.size(); i++) 
			{
				empProfile        = new EmployeeProfile();
				employCode        = String.valueOf(empList.get(0));
				employName        = String.valueOf(empList.get(1));
				departmentId      = Integer.parseInt(String.valueOf(empList.get(2)));
				designationId     = Integer.parseInt(String.valueOf(empList.get(3)));
				username          = String.valueOf(empList.get(4));
				
				empProfile.setEmployCode(employCode); 
				empProfile.setEmployeeName(employName);
				empProfile.setDepartmentId(departmentId);
				empProfile.setDesignationId(designationId);
				empProfile.setEmpUserName(username);
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return empProfile;
	}*/
}
