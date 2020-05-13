package com.navtech.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Entity
@Table(name="EmployeeProfile")
public class EmployeeProfile 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="empId")
	private long empId;
	
	@Column(name="employCode")
	private String employCode;
	
	@Column(name="empUserName")
	private String empUserName;
	
	@Column(name="employeeName")
	private String employeeName;
	
	@Column(name="fatherName")
	private String fatherName;
	
	@Column(name="address")
	private String address;
	
	@Column(name="departmentId")
	private int departmentId;
	
	@Column(name="designationId")
	private int designationId;
	
	@Column(name="profilePicPath")
	private String profilePicPath;
	
	@Transient
	private MultipartFile imageFile;
	
	@Column(name="emailId")
	private String emailId;
	
	@Column(name="phoeNumber")
	private String phoeNumber;
	
	@Column(name="skypeId")
	private String skypeId;
	
	@Column(name="dateOfBirth")
	private Date dateOfBirth;
	
	@Column(name="dateOfJoining")
	private Date dateOfJoining;
	
	@Column(name="hobbies")
	private String hobbies;
	
	@Column(name="qualification")
	private String qualification;
	
	@Column(name="skills")
	private String skills;
	
	@Column(name="aboutYourself")
	private String aboutYourself;
	
	@Transient
	private String departmentName;
	
	@Transient
	private String designationName;

	//Employ Profile constructor
	public EmployeeProfile() 
	{
		
	}

	public long getEmpId() {
		return empId;
	}

	public void setEmpId(long empId) {
		this.empId = empId;
	}

	public String getEmployCode() {
		return employCode;
	}

	public void setEmployCode(String employCode) {
		this.employCode = employCode;
	}

	public String getEmpUserName() {
		return empUserName;
	}

	public void setEmpUserName(String empUserName) {
		this.empUserName = empUserName;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getProfilePicPath() {
		return profilePicPath;
	}

	public void setProfilePicPath(String profilePicPath) {
		this.profilePicPath = profilePicPath;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPhoeNumber() {
		return phoeNumber;
	}

	public void setPhoeNumber(String phoeNumber) {
		this.phoeNumber = phoeNumber;
	}

	public String getSkypeId() {
		return skypeId;
	}

	public void setSkypeId(String skypeId) {
		this.skypeId = skypeId;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Date getDateOfJoining() {
		return dateOfJoining;
	}

	public void setDateOfJoining(Date dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}

	public String getHobbies() {
		return hobbies;
	}

	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getAboutYourself() {
		return aboutYourself;
	}

	public void setAboutYourself(String aboutYourself) {
		this.aboutYourself = aboutYourself;
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

	

	public MultipartFile getImageFile() {
		return imageFile;
	}

	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}

	@Override
	public String toString() {
		return "EmployeeProfile [empId=" + empId + ", employCode=" + employCode + ", empUserName=" + empUserName
				+ ", employeeName=" + employeeName + ", fatherName=" + fatherName + ", address=" + address
				+ ", departmentId=" + departmentId + ", designationId=" + designationId + ", profilePicPath="
				+ profilePicPath + ", imageFile=" + imageFile + ", emailId=" + emailId + ", phoeNumber=" + phoeNumber
				+ ", skypeId=" + skypeId + ", dateOfBirth=" + dateOfBirth + ", dateOfJoining=" + dateOfJoining
				+ ", hobbies=" + hobbies + ", qualification=" + qualification + ", skills=" + skills
				+ ", aboutYourself=" + aboutYourself + ", departmentName=" + departmentName + ", designationName="
				+ designationName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((aboutYourself == null) ? 0 : aboutYourself.hashCode());
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((dateOfBirth == null) ? 0 : dateOfBirth.hashCode());
		result = prime * result + ((dateOfJoining == null) ? 0 : dateOfJoining.hashCode());
		result = prime * result + departmentId;
		result = prime * result + ((departmentName == null) ? 0 : departmentName.hashCode());
		result = prime * result + designationId;
		result = prime * result + ((designationName == null) ? 0 : designationName.hashCode());
		result = prime * result + ((emailId == null) ? 0 : emailId.hashCode());
		result = prime * result + (int) (empId ^ (empId >>> 32));
		result = prime * result + ((empUserName == null) ? 0 : empUserName.hashCode());
		result = prime * result + ((employCode == null) ? 0 : employCode.hashCode());
		result = prime * result + ((employeeName == null) ? 0 : employeeName.hashCode());
		result = prime * result + ((fatherName == null) ? 0 : fatherName.hashCode());
		result = prime * result + ((hobbies == null) ? 0 : hobbies.hashCode());
		result = prime * result + ((imageFile == null) ? 0 : imageFile.hashCode());
		result = prime * result + ((phoeNumber == null) ? 0 : phoeNumber.hashCode());
		result = prime * result + ((profilePicPath == null) ? 0 : profilePicPath.hashCode());
		result = prime * result + ((qualification == null) ? 0 : qualification.hashCode());
		result = prime * result + ((skills == null) ? 0 : skills.hashCode());
		result = prime * result + ((skypeId == null) ? 0 : skypeId.hashCode());
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
		EmployeeProfile other = (EmployeeProfile) obj;
		if (aboutYourself == null) {
			if (other.aboutYourself != null)
				return false;
		} else if (!aboutYourself.equals(other.aboutYourself))
			return false;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (dateOfBirth == null) {
			if (other.dateOfBirth != null)
				return false;
		} else if (!dateOfBirth.equals(other.dateOfBirth))
			return false;
		if (dateOfJoining == null) {
			if (other.dateOfJoining != null)
				return false;
		} else if (!dateOfJoining.equals(other.dateOfJoining))
			return false;
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
		if (emailId == null) {
			if (other.emailId != null)
				return false;
		} else if (!emailId.equals(other.emailId))
			return false;
		if (empId != other.empId)
			return false;
		if (empUserName == null) {
			if (other.empUserName != null)
				return false;
		} else if (!empUserName.equals(other.empUserName))
			return false;
		if (employCode == null) {
			if (other.employCode != null)
				return false;
		} else if (!employCode.equals(other.employCode))
			return false;
		if (employeeName == null) {
			if (other.employeeName != null)
				return false;
		} else if (!employeeName.equals(other.employeeName))
			return false;
		if (fatherName == null) {
			if (other.fatherName != null)
				return false;
		} else if (!fatherName.equals(other.fatherName))
			return false;
		if (hobbies == null) {
			if (other.hobbies != null)
				return false;
		} else if (!hobbies.equals(other.hobbies))
			return false;
		if (imageFile == null) {
			if (other.imageFile != null)
				return false;
		} else if (!imageFile.equals(other.imageFile))
			return false;
		if (phoeNumber == null) {
			if (other.phoeNumber != null)
				return false;
		} else if (!phoeNumber.equals(other.phoeNumber))
			return false;
		if (profilePicPath == null) {
			if (other.profilePicPath != null)
				return false;
		} else if (!profilePicPath.equals(other.profilePicPath))
			return false;
		if (qualification == null) {
			if (other.qualification != null)
				return false;
		} else if (!qualification.equals(other.qualification))
			return false;
		if (skills == null) {
			if (other.skills != null)
				return false;
		} else if (!skills.equals(other.skills))
			return false;
		if (skypeId == null) {
			if (other.skypeId != null)
				return false;
		} else if (!skypeId.equals(other.skypeId))
			return false;
		return true;
	}
	
	
}
