package com.navtech.dao.prerequesents;

import java.util.List;

import com.navtech.model.LeaveCount;

public interface LeaveCountDao 
{
	public void saveLeaveCount(LeaveCount leaveCount);
	
	public void updateLeaveCount(LeaveCount leaveCount);
	
	public List<LeaveCount> listOfLeaveCount();
	
	public LeaveCount getLeaveCountDetails(long leaveCountId);
	
	public int existLeaveCountToDepartment(LeaveCount leaveCount);

}
