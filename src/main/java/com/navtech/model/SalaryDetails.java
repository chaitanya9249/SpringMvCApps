package com.navtech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "salarydetails")
public class SalaryDetails 
{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "salaryId")
	private long salaryId;
	
	@Column(name = "departmentId")
	private long departmentId;
	
	@Column(name = "designationId")
	private long designationId;
	
	@Column(name = "empId")
	private long empId;
	
	@Column(name = "salaryPerAnum")
	private double salaryPerAnum;
	
	@Transient
	private String departmentName;
	
	@Transient
	private String designationName;
	
	@Transient
	private String empName;
	

	
	public SalaryDetails() 
	{
		
	}	
	
	public double getSalaryPerAnum() {
		return salaryPerAnum;
	}

	public void setSalaryPerAnum(double salaryPerAnum) {
		this.salaryPerAnum = salaryPerAnum;
	}

	public long getSalaryId() {
		return salaryId;
	}

	public void setSalaryId(long salaryId) {
		this.salaryId = salaryId;
	}

	public long getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(long departmentId) {
		this.departmentId = departmentId;
	}

	public long getDesignationId() {
		return designationId;
	}

	public void setDesignationId(long designationId) {
		this.designationId = designationId;
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

	public long getEmpId() {
		return empId;
	}

	public void setEmpId(long empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	@Override
	public String toString() {
		return "SalaryDetails [salaryId=" + salaryId + ", departmentId=" + departmentId + ", designationId="
				+ designationId + ", empId=" + empId + ", salaryPerAnum=" + salaryPerAnum + ", departmentName="
				+ departmentName + ", designationName=" + designationName + ", empName=" + empName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (departmentId ^ (departmentId >>> 32));
		result = prime * result + ((departmentName == null) ? 0 : departmentName.hashCode());
		result = prime * result + (int) (designationId ^ (designationId >>> 32));
		result = prime * result + ((designationName == null) ? 0 : designationName.hashCode());
		result = prime * result + (int) (empId ^ (empId >>> 32));
		result = prime * result + ((empName == null) ? 0 : empName.hashCode());
		result = prime * result + (int) (salaryId ^ (salaryId >>> 32));
		long temp;
		temp = Double.doubleToLongBits(salaryPerAnum);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		SalaryDetails other = (SalaryDetails) obj;
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
		if (empId != other.empId)
			return false;
		if (empName == null) {
			if (other.empName != null)
				return false;
		} else if (!empName.equals(other.empName))
			return false;
		if (salaryId != other.salaryId)
			return false;
		if (Double.doubleToLongBits(salaryPerAnum) != Double.doubleToLongBits(other.salaryPerAnum))
			return false;
		return true;
	}
	
	
}
