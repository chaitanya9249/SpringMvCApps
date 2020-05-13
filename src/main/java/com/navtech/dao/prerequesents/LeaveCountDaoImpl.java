package com.navtech.dao.prerequesents;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.navtech.model.LeaveCount;

@Repository
@Transactional
public class LeaveCountDaoImpl implements LeaveCountDao 
{

	@Autowired
	private SessionFactory sessionFactory;

	//Save
	@Override
	public void saveLeaveCount(LeaveCount leaveCount) 
	{
		sessionFactory.getCurrentSession().save(leaveCount);
	}

	//Update
	@Override
	public void updateLeaveCount(LeaveCount leaveCount) 
	{
		sessionFactory.getCurrentSession().update(leaveCount);
	}

	//List
	@Override
	public List<LeaveCount> listOfLeaveCount() 
	{

		List<LeaveCount> list = new ArrayList<LeaveCount>();
		LeaveCount leaveCount         = null;
		Session session               = null;
		try 
		{
			session = sessionFactory.getCurrentSession();



			Query query = session.createQuery("select l.leaveId,l.departmentId,l.numberOfLeaves,d.departmentName "
					+ "from Departments d, LeaveCount l where d.departmentId = l.departmentId");

			List<Object[]> designationsData = query.list();

			for(Object[] desgs : designationsData)
			{
				leaveCount = new LeaveCount();
				leaveCount.setLeaveId((long) desgs[0]);
				leaveCount.setDepartmentId((long)desgs[1]);
				leaveCount.setNumberOfLeaves((int) desgs[2]);
				leaveCount.setDepartmentName((String) desgs[3]);
				list.add(leaveCount);
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return list;
	}

	//Edit
	@Override
	public LeaveCount getLeaveCountDetails(long leaveCountId) 
	{

		Session session               = null;
		LeaveCount leaveCount         = null;
		try 
		{
			session = sessionFactory.getCurrentSession();

			Query query = session.createQuery("select l.leaveId,l.departmentId,l.numberOfLeaves,d.departmentName "
					+ "from Departments d, LeaveCount l where d.departmentId = l.departmentId and l.leaveId = :leaveCountId ");

			query.setParameter("leaveCountId", leaveCountId);

			List<Object[]> designationsData = query.list();
			for(Object[] desgs : designationsData)
			{
				leaveCount = new LeaveCount();
				leaveCount.setLeaveId((long) desgs[0]);
				leaveCount.setDepartmentId((long)desgs[1]);
				leaveCount.setNumberOfLeaves((int) desgs[2]);
				leaveCount.setDepartmentName((String) desgs[3]);
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}

		return leaveCount;
	}

	@Override
	public int existLeaveCountToDepartment(LeaveCount leaveCount)
	{
		Session session               = null;
		int size                      = 0 ;

		try 
		{
			session = sessionFactory.getCurrentSession();

			Query query = session.createQuery("select l.leaveId,l.departmentId,l.numberOfLeaves "
					+ "from LeaveCount l where l.leaveId != :leaveCountId and l.departmentId = :deptId ");

			query.setParameter("leaveCountId", leaveCount.getLeaveId());
			query.setParameter("deptId", leaveCount.getDepartmentId());

			List<Object[]> leaveCountList = query.list();
			size = leaveCountList.size();

		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}

		return 0;
	}
}
