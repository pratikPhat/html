package com.dacproject.SocialHelpCarePortal.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dacproject.SocialHelpCarePortal.model.Admin;
import com.dacproject.SocialHelpCarePortal.model.Event;

@Repository
@Transactional
public class AdminDao {

	@Autowired
	private SessionFactory _sessionFactory;

	private Session getSession() {
		return _sessionFactory.getCurrentSession();
	}

	public void save(Admin ad) {
		getSession().save(ad);
	}

	public void deleteEvent(int id) {
		Event event = (Event) getSession().load(Event.class, new Integer(id));
		System.out.println(event.getEventName());
		getSession().delete(event);
	}

	public Event getEventById(int id) {
		Event e = (Event) getSession().load(Event.class, new Integer(id));
		System.out.println(e.getEventName());
		return e;
	}

	public Event updateEvent(Event event) {
		getSession().update(event);
		return event;
	}

}