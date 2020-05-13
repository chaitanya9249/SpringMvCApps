package com.navtech.dao.mainrequesents;

import java.util.List;

import com.navtech.model.LeaveRequest;

public interface LeaveManagementDao 
{
	public void sendLeaveRequest(LeaveRequest leaveRequest);
	
	public List<LeaveRequest> leaveReuestsList();
	
	public void approveLeaveRequest(LeaveRequest leaveRequest);
	
	
}
