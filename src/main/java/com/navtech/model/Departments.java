package com.navtech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="departments")
public class Departments 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="departmentId")
	private int departmentId;
	
	//@NotEmpty(message = "Department Code should not be null")
	@Column(name="departmentCode")
	private String departmentCode;
	
	//@NotEmpty(message = "Department Name should not be null")
	@Column(name="departmentName")
	private String departmentName;
	
	//@NotEmpty(message = "Department status should not be null")
	@Column(name="departmentStatus")
	private String departmentStatus;

	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getDepartmentStatus() {
		return departmentStatus;
	}

	public void setDepartmentStatus(String departmentStatus) {
		this.departmentStatus = departmentStatus;
	}
	
	public String getDepartmentCode() {
		return departmentCode;
	}

	public void setDepartmentCode(String departmentCode) {
		this.departmentCode = departmentCode;
	}
	
	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((departmentCode == null) ? 0 : departmentCode.hashCode());
		result = prime * result + departmentId;
		result = prime * result + ((departmentName == null) ? 0 : departmentName.hashCode());
		result = prime * result + ((departmentStatus == null) ? 0 : departmentStatus.hashCode());
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
		Departments other = (Departments) obj;
		if (departmentCode == null) {
			if (other.departmentCode != null)
				return false;
		} else if (!departmentCode.equals(other.departmentCode))
			return false;
		if (departmentId != other.departmentId)
			return false;
		if (departmentName == null) {
			if (other.departmentName != null)
				return false;
		} else if (!departmentName.equals(other.departmentName))
			return false;
		if (departmentStatus == null) {
			if (other.departmentStatus != null)
				return false;
		} else if (!departmentStatus.equals(other.departmentStatus))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Departments [departmentId=" + departmentId + ", departmentCode=" + departmentCode + ", departmentName="
				+ departmentName + ", departmentStatus=" + departmentStatus + "]";
	}

	public Departments() 
	{
		
	}
}
