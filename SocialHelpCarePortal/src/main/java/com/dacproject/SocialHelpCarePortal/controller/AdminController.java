package com.dacproject.SocialHelpCarePortal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dacproject.SocialHelpCarePortal.dao.EventDao;
import com.dacproject.SocialHelpCarePortal.dao.NeedyUserDao;
import com.dacproject.SocialHelpCarePortal.dao.NgoDao;
import com.dacproject.SocialHelpCarePortal.dao.SocialDao;
import com.dacproject.SocialHelpCarePortal.model.Event;
import com.dacproject.SocialHelpCarePortal.model.User;

@Controller
public class AdminController {
	
	  @Autowired
	  private SocialDao socialDao;
	  @Autowired
	  private EventDao eventDao;
	  @Autowired
	  private NeedyUserDao needyDao;
	  @Autowired
	  private NgoDao ngoDao;

    @RequestMapping("/adminvolunteer")
    public String getVolunteer(Model model,HttpServletRequest request) {
    	request.setAttribute("mode","Volunteer");
        List<User> userList=socialDao.listVolunteer();
        System.out.println(userList.size());
        model.addAttribute("userList", userList);
        return "eventlist";
    }
    
    @RequestMapping("/adminevents")
    public String getEvents(Event event,Model model,HttpServletRequest request) {
    	request.setAttribute("mode","EventList");
        List<Event> events=eventDao.retrieve(event);
        System.out.println(events.size());
        model.addAttribute("events", events);
        return "eventlist";
    }
    
    @RequestMapping("/adminneedyuser")
    public String getNeedy(Model model,HttpServletRequest request) {
    	request.setAttribute("mode","Needy");
        List<User> needyList=needyDao.listVolunteer();
        model.addAttribute("needyList", needyList);
        return "eventlist";
    }
    
    @RequestMapping("/adminngo")
    public String getNgo(Model model,HttpServletRequest request) {
    	request.setAttribute("mode","Ngo");
        List<User> ngoList=ngoDao.listVolunteer();
        model.addAttribute("ngoList", ngoList);
        return "eventlist";
    }
}
