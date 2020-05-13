package com.navtech.controller.mainrequesents;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.navtech.model.Attendance;

@Controller
public class AttendanceManagementController 
{
	
	@RequestMapping(value = "/showAttendanceUpload", method = RequestMethod.GET)
	public ModelAndView showFileUploadingView(ModelAndView model,@ModelAttribute Attendance attendance)
	{
		model.addObject("attendance", attendance);
		model.setViewName("main_requsents/attendance_upload");
		return model;
	}

}
