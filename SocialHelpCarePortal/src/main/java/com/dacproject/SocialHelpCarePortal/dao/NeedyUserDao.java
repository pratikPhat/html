package com.dacproject.SocialHelpCarePortal.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dacproject.SocialHelpCarePortal.model.NeedyUser;
import com.dacproject.SocialHelpCarePortal.model.Ngo;
import com.dacproject.SocialHelpCarePortal.model.User;



@Repository
@Transactional
public class NeedyUserDao {
  
  @Autowired
  private SessionFactory _sessionFactory;
  
  private Session getSession() {
    return _sessionFactory.getCurrentSession();
  }

  public void save(NeedyUser sw) {
    getSession().save(sw);
  }
  
	public List<User> listVolunteer() {
		String hql="FROM User E WHERE E.type = '" + "needy" + "'";
		List<User> needyList = getSession().createQuery(hql).list();
		return needyList;
	}
	
	public List<User> listNgo() {
		String hql="FROM User E WHERE E.type = '" + "ngo" + "'";
		List<User> ngoList = getSession().createQuery(hql).list();
		return ngoList;
	}
	
	public List<NeedyUser> needy(String userName) {
		String hql="FROM NeedyUser E WHERE E.userName = '" + userName + "'";
		List<NeedyUser> needy =getSession().createQuery(hql).list();
		return needy;
	}

}