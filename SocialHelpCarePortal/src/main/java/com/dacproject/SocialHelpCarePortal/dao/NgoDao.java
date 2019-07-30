package com.dacproject.SocialHelpCarePortal.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dacproject.SocialHelpCarePortal.model.Event;
import com.dacproject.SocialHelpCarePortal.model.Ngo;
import com.dacproject.SocialHelpCarePortal.model.User;



@Repository
@Transactional
public class NgoDao {
  
  @Autowired
  private SessionFactory _sessionFactory;
  
  private Session getSession() {
    return _sessionFactory.getCurrentSession();
  }

  public void save(Ngo ngo) {
    getSession().save(ngo);
  }
  
	public List<User> listVolunteer() {
		String hql="FROM User E WHERE E.type = '" + "ngo" + "'";
		List<User> ngoList = getSession().createQuery(hql).list();
		return ngoList;
	}
	
	public List<Ngo> ngo(int id) {
		String hql="FROM Ngo E WHERE E.registeredIdNumber = '" + id + "'";
		List<Ngo> ngo =getSession().createQuery(hql).list();
		return ngo;
	}

}