package com.navtech.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="leaverequest")
public class LeaveRequest 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "leaveRequestId")
	private long leaveRequestId;
	
	@Column(name = "employId")
	private long employId;
	
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	@Column(name = "leaveRequestDate")
	private Date leaveRequestDate;
	
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	@Column(name = "leaveFromDate")
	private Date leaveFromDate;
	
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	@Column(name = "leaveToDate")	
	private Date leaveToDate;
	
	@Column(name = "reason")
	private String reason;
	
	@Column(name = "leaveStatus")
	private String leaveStatus;
	
	@Column(name = "departmentId")
	private int departmentId;
	
	@Column(name = "designationId")
	private int designationId;
	
	@Transient
	private String employCode;
	
	@Transient
	private String employName;
	
	@Transient
	private String departmentName;
	
	@Transient
	private String designationName;
	
	

	public String getEmployCode() {
		return employCode;
	}

	public void setEmployCode(String employCode) {
		this.employCode = employCode;
	}

	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public int getDesignationId() {
		return designationId;
	}

	public void setDesignationId(int designationId) {
		this.designationId = designationId;
	}

	public String getLeaveStatus() {
		return leaveStatus;
	}

	public void setLeaveStatus(String leaveStatus) {
		this.leaveStatus = leaveStatus;
	}

	public long getEmployId() {
		return employId;
	}

	public void setEmployId(long employId) {
		this.employId = employId;
	}

	public String getEmployName() {
		return employName;
	}

	public void setEmployName(String employName) {
		this.employName = employName;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getDesignationName() {
		return designationName;
	}

	public void setDesignationName(String designationName) {
		this.designationName = designationName;
	}

	public long getLeaveRequestId() {
		return leaveRequestId;
	}

	public void setLeaveRequestId(long leaveRequestId) {
		this.leaveRequestId = leaveRequestId;
	}

	public Date getLeaveRequestDate() {
		return leaveRequestDate;
	}

	public void setLeaveRequestDate(Date leaveRequestDate) {
		this.leaveRequestDate = leaveRequestDate;
	}

	public Date getLeaveFromDate() {
		return leaveFromDate;
	}

	public void setLeaveFromDate(Date leaveFromDate) {
		this.leaveFromDate = leaveFromDate;
	}

	public Date getLeaveToDate() {
		return leaveToDate;
	}

	public void setLeaveToDate(Date leaveToDate) {
		this.leaveToDate = leaveToDate;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}
	
	public LeaveRequest() 
	{
		
	}

	@Override
	public String toString() {
		return "LeaveRequest [leaveRequestId=" + leaveRequestId + ", employId=" + employId + ", leaveRequestDate="
				+ leaveRequestDate + ", leaveFromDate=" + leaveFromDate + ", leaveToDate=" + leaveToDate + ", reason="
				+ reason + ", leaveStatus=" + leaveStatus + ", departmentId=" + departmentId + ", designationId="
				+ designationId + ", employCode=" + employCode + ", employName=" + employName + ", departmentName="
				+ departmentName + ", designationName=" + designationName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + departmentId;
		result = prime * result + ((departmentName == null) ? 0 : departmentName.hashCode());
		result = prime * result + designationId;
		result = prime * result + ((designationName == null) ? 0 : designationName.hashCode());
		result = prime * result + ((employCode == null) ? 0 : employCode.hashCode());
		result = prime * result + (int) (employId ^ (employId >>> 32));
		result = prime * result + ((employName == null) ? 0 : employName.hashCode());
		result = prime * result + ((leaveFromDate == null) ? 0 : leaveFromDate.hashCode());
		result = prime * result + ((leaveRequestDate == null) ? 0 : leaveRequestDate.hashCode());
		result = prime * result + (int) (leaveRequestId ^ (leaveRequestId >>> 32));
		result = prime * result + ((leaveStatus == null) ? 0 : leaveStatus.hashCode());
		result = prime * result + ((leaveToDate == null) ? 0 : leaveToDate.hashCode());
		result = prime * result + ((reason == null) ? 0 : reason.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		LeaveRequest other = (LeaveRequest) obj;
		if (departmentId != other.departmentId)
			return false;
		if (departmentName == null) {
			if (other.departmentName != null)
				return false;
		} else if (!departmentName.equals(other.departmentName))
			return false;
		if (designationId != other.designationId)
			return false;
		if (designationName == null) {
			if (other.designationName != null)
				return false;
		} else if (!designationName.equals(other.designationName))
			return false;
		if (employCode == null) {
			if (other.employCode != null)
				return false;
		} else if (!employCode.equals(other.employCode))
			return false;
		if (employId != other.employId)
			return false;
		if (employName == null) {
			if (other.employName != null)
				return false;
		} else if (!employName.equals(other.employName))
			return false;
		if (leaveFromDate == null) {
			if (other.leaveFromDate != null)
				return false;
		} else if (!leaveFromDate.equals(other.leaveFromDate))
			return false;
		if (leaveRequestDate == null) {
			if (other.leaveRequestDate != null)
				return false;
		} else if (!leaveRequestDate.equals(other.leaveRequestDate))
			return false;
		if (leaveRequestId != other.leaveRequestId)
			return false;
		if (leaveStatus == null) {
			if (other.leaveStatus != null)
				return false;
		} else if (!leaveStatus.equals(other.leaveStatus))
			return false;
		if (leaveToDate == null) {
			if (other.leaveToDate != null)
				return false;
		} else if (!leaveToDate.equals(other.leaveToDate))
			return false;
		if (reason == null) {
			if (other.reason != null)
				return false;
		} else if (!reason.equals(other.reason))
			return false;
		return true;
	}
	
}
