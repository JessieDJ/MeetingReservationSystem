package com.DAOiml;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.DAO.DaoInterface;
import com.model.AgentForm;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.utils.HibernateUtils;

public class UserDAO implements DaoInterface {

	
	@SuppressWarnings("finally")
	@Override
	public User match(User user) {
		System.out.println(3);
		
		Session session = HibernateUtils.getSessionFactory().openSession();
		Transaction trans = session.beginTransaction();
		
		
		String hql = "FROM User U WHERE U.username = :username";
		System.out.println(5);

		Query query = session.createQuery(hql);

		query.setParameter("username", user.getUsername());
		System.out.println(6);
		
		User u = new User();
		try {
			u = (User) query.uniqueResult();
		} catch(java.lang.NullPointerException e) {
			System.out.println(e);
			u = null;
		} finally {
			trans.commit();
	        session.close();
	        if (u != null && (u.getPasswd().equals(user.getPasswd()))) {
				return u;
			}
			else {
				return null;
			}
		}
	}
	@Override
	public boolean agentRegister(AgentForm af) {
		Session session = HibernateUtils.getSessionFactory().openSession();
		Transaction trans = session.beginTransaction();
		try {
			session.save(af);
			trans.commit();
	        session.close();
	        return true;
		} catch (Exception e) {
			return false;
		}
	}
	@Override
	public List read(User user) {
		Session session = HibernateUtils.getSessionFactory().openSession();
		Transaction trans = session.beginTransaction();
		
		
		String hql = "FROM AgentForm";
		Query query = session.createQuery(hql);
		
		List results = query.list();
		
		trans.commit();
        session.close();
        return results;
		
	}
	
	
}
