package com.ams.daoimpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.ams.dao.DashboardDao;

@Service
public class DashboardDaoImpl implements DashboardDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public String totalAdmin() {
		Session session = sessionFactory.openSession();
		String Hql = "Select count(admins.adminId) FROM Admin admins";
		Query Query = session.createQuery(Hql);
		String adminId = Query.list().get(0).toString();
		System.out.println("admin_id :" + adminId);
		session.close();
		return adminId;
	}

	@Override
	public String totalUser() {
		Session session = sessionFactory.openSession();
		String Hql = "Select count(users.userId) FROM User users";
		Query Query = session.createQuery(Hql);
		String userId = Query.list().get(0).toString();
		System.out.println("user_id :" + userId);
		session.close();
		return userId;
	}

	@Override
	public String totalComplain() {
		Session session = sessionFactory.openSession();
		String Hql = "Select count(complains.complainId) FROM Complain complains";
		Query Query = session.createQuery(Hql);
		String complainId = Query.list().get(0).toString();
		System.out.println("complain_id :" + complainId);
		session.close();
		return complainId;
	}

	@Override
	public String totalVisitor() {
		Session session = sessionFactory.openSession();
		String Hql = "Select count(visitors.visitorId) FROM Visitor visitors";
		Query Query = session.createQuery(Hql);
		String visitorId = Query.list().get(0).toString();
		System.out.println("visitor_id :" + visitorId);
		session.close();
		return visitorId;
	}
	
	@Override
	public String totalFlat() {
		Session session = sessionFactory.openSession();
		String Hql = "Select count(flats.flatId) FROM Flat flats";
		Query Query = session.createQuery(Hql);
		String flatId = Query.list().get(0).toString();
		System.out.println("flatId :" + flatId);
		session.close();
		return flatId;
	}

}
