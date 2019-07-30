package com.dacproject.SocialHelpCarePortal.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dacproject.SocialHelpCarePortal.model.Event;
import com.dacproject.SocialHelpCarePortal.model.NeedyUser;
import com.dacproject.SocialHelpCarePortal.model.SocialWorker;
import com.dacproject.SocialHelpCarePortal.model.User;



@Repository
@Transactional
public class SocialDao {
  
  @Autowired
  private SessionFactory _sessionFactory;
  
  private Session getSession() {
    return _sessionFactory.getCurrentSession();
  }

  public void save(NeedyUser needy) {
    getSession().save(needy);
  }
  
	public List<User> listVolunteer() {
		String hql="FROM User E WHERE E.type = '" + "Volunteer" + "'";
		List<User> volunteerList = getSession().createQuery(hql).list();
		return volunteerList;
	}

}