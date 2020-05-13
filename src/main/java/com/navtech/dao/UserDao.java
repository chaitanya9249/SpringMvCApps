package com.navtech.dao;

import com.navtech.model.EmployeeProfile;
import com.navtech.model.UserRegistration;
import com.navtech.model.User_Roles;
import com.navtech.model.Users;

public interface UserDao 
{
	public void saveUserData(UserRegistration registration,User_Roles userRoles,Users users);
	
	public Users loginAuthentication(Users users);
	
	public void saveRoles();
	
	public int existedUser(UserRegistration users);
	
	public int findRoleIdByUser(int userId);
	
	//public EmployeeProfile findEmployeeDetailsById(int userId);
}
