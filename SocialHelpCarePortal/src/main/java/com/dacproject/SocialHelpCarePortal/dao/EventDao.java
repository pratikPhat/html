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
import com.dacproject.SocialHelpCarePortal.model.User;







@Repository
@Transactional
public class EventDao {

	 
	  @Autowired
	  private SessionFactory _sessionFactory;
	  
	  private Session getSession() {
	    return _sessionFactory.getCurrentSession();
	  }

	  public void save(Event event) {
	    getSession().save(event);
	  }
	  
	  public void delete(int id)
	  {
			Event event = 
					(Event) getSession().load(Event.class, new Integer(id));
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
	  
	  public List retrieve(Event event) {
		  ArrayList<Event> list=new ArrayList<>();
		  String hql = "FROM Event e";
		  
		  Query query = (Query) getSession().createQuery(hql);
		  List results = new ArrayList<>();
		  results=query.list();
		  Iterator it=results.iterator();
		  while(it.hasNext())
		  {
			  Object o=(Object)it.next();
			  Event e1=(Event) o;
			  list.add(e1);
		  }
		  if(list==null)
		  {
			  return null;
		  }
		  else
		  {
			/*
			 * for (int i = 0; i < results.size(); i++) { events = (Event) results.get(i);
			 * System.out.println(events.getEventtype()); }
			 */
			  return list;
		  }

		 }
	  

	}
