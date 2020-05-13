package com.navtech.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="holidaysList")
public class HolidaysList 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="holidaysId")
	private int holidaysId;
	
	@Column(name="holidayName")
	private String holidayName;
	
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	@Column(name="holidayDate")
	private Date holidayDate;
	
	@Column(name="holidayStatus")
	private String holidayStatus;

	public int getHolidaysId() 
	{
		return holidaysId;
	}

	public void setHolidaysId(int holidaysId) 
	{
		this.holidaysId = holidaysId;
	}

	public String getHolidayName() 
	{
		return holidayName;
	}

	public void setHolidayName(String holidayName) 
	{
		this.holidayName = holidayName;
	}

	public Date getHolidayDate()
	{
		return holidayDate;
	}

	public void setHolidayDate(Date holidayDate) 
	{
		this.holidayDate = holidayDate;
	}

	public String getHolidayStatus() 
	{
		return holidayStatus;
	}

	public void setHolidayStatus(String holidayStatus) 
	{
		this.holidayStatus = holidayStatus;
	}

	public HolidaysList() 
	{
		System.out.println("Default constructor");
	}
	
	@Override
	public String toString() {
		return "HolidaysList [holidaysId=" + holidaysId + ", holidayName=" + holidayName + ", holidayDate="
				+ holidayDate + ", holidayStatus=" + holidayStatus + "]";
	}

	public HolidaysList(int holidaysId, String holidayName, Date holidayDate, String holidayStatus) {
		super();
		this.holidaysId = holidaysId;
		this.holidayName = holidayName;
		this.holidayDate = holidayDate;
		this.holidayStatus = holidayStatus;
	}
	
	
}
