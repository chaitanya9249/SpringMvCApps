package com.navtech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="designations")
public class Designations 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="designationId")
	private int designationId;
	
	@Column(name="designationCode")
	private String designationCode;
	
	@Column(name="departmentId")
	private int departmentId;
	
	@Column(name="designationName")
	private String designationName;
	
	@Column(name="designationStatus")
	private String designationStatus;
	
	@Transient
	private String departmentName;
	
	public String getDesignationCode() {
		return designationCode;
	}

	public void setDesignationCode(String designationCode) {
		this.designationCode = designationCode;
	}

	public String getDesignationStatus() {
		return designationStatus;
	}

	public void setDesignationStatus(String designationStatus) {
		this.designationStatus = designationStatus;
	}

	public int getDesignationId() 
	{
		return designationId;
	}

	public void setDesignationId(int designationId) 
	{
		this.designationId = designationId;
	}

	public int getDepartmentId() 
	{
		return departmentId;
	}

	public void setDepartmentId(int departmentId) 
	{
		this.departmentId = departmentId;
	}

	public String getDesignationName() 
	{
		return designationName;
	}

	public void setDesignationName(String designationName) 
	{
		this.designationName = designationName;
	}


	public String getDepartmentName() 
	{
		return departmentName;
	}

	public void setDepartmentName(String departmentName) 
	{
		this.departmentName = departmentName;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + departmentId;
		result = prime * result + ((departmentName == null) ? 0 : departmentName.hashCode());
		result = prime * result + ((designationCode == null) ? 0 : designationCode.hashCode());
		result = prime * result + designationId;
		result = prime * result + ((designationName == null) ? 0 : designationName.hashCode());
		result = prime * result + ((designationStatus == null) ? 0 : designationStatus.hashCode());
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
		Designations other = (Designations) obj;
		if (departmentId != other.departmentId)
			return false;
		if (departmentName == null) {
			if (other.departmentName != null)
				return false;
		} else if (!departmentName.equals(other.departmentName))
			return false;
		if (designationCode == null) {
			if (other.designationCode != null)
				return false;
		} else if (!designationCode.equals(other.designationCode))
			return false;
		if (designationId != other.designationId)
			return false;
		if (designationName == null) {
			if (other.designationName != null)
				return false;
		} else if (!designationName.equals(other.designationName))
			return false;
		if (designationStatus == null) {
			if (other.designationStatus != null)
				return false;
		} else if (!designationStatus.equals(other.designationStatus))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Designations [designationId=" + designationId + ", designationCode=" + designationCode
				+ ", departmentId=" + departmentId + ", designationName=" + designationName + ", designationStatus="
				+ designationStatus + ", departmentName=" + departmentName + "]";
	}

	public Designations() 
	{
		
	}
}
