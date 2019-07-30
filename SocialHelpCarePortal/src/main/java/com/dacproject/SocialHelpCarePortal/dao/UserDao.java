package com.dacproject.SocialHelpCarePortal.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dacproject.SocialHelpCarePortal.model.User;



@Repository
@Transactional
public class UserDao {

	 
	  @Autowired
	  private SessionFactory _sessionFactory;
	  
	  private Session getSession() {
	    return _sessionFactory.getCurrentSession();
	  }

	  public void save(User user) {
	    getSession().save(user);
	  }
	  
		public User getUserById(int id) {
			User e = (User) getSession().load(User.class, new Integer(id));
			System.out.println(e.getName());
			return e;
		}
	  
	  public User retrieve(User user) {
		  User user1=null;
		  String name=user.getName();
		  String pass=user.getPassword();
		  String hql = "FROM User E WHERE E.name = '" + name + "' and E.password = '" + pass + "'";
		  Query query = (Query) getSession().createQuery(hql);
		  List results = query.list();
		  if(results==null)
		  {
			  return null;
		  }
		  else
		  {
			  for (int i = 0; i < results.size(); i++) {
				   user1 = (User) results.get(i);
				   System.out.println(user1.getPassword());
				  }
			  return user1;
		  }

		 }
	  

	}
