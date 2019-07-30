package com.dacproject.SocialHelpCarePortal.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.dacproject.SocialHelpCarePortal.dao.EventDao;
import com.dacproject.SocialHelpCarePortal.dao.NeedyUserDao;
import com.dacproject.SocialHelpCarePortal.dao.NgoDao;
import com.dacproject.SocialHelpCarePortal.dao.SocialDao;
import com.dacproject.SocialHelpCarePortal.dao.UserDao;
import com.dacproject.SocialHelpCarePortal.model.Event;
import com.dacproject.SocialHelpCarePortal.model.NeedyUser;
import com.dacproject.SocialHelpCarePortal.model.Ngo;
import com.dacproject.SocialHelpCarePortal.model.User;


@Controller
@SessionAttributes("user")
public class FirstController{

	private User globalUser=null;
	  @Autowired
	  private UserDao userDao;
	  @Autowired
	  private EventDao eventDao;
	  @Autowired
	  private SocialDao socialDao;
	  @Autowired
	  private NeedyUserDao needyDao;
	  @Autowired
	  private NgoDao ngoDao;
	
    @RequestMapping({"/", "/home"})
    public String hello(Model model,HttpServletRequest request, @RequestParam(value="name", required=false, defaultValue="World") String name) {
    	request.setAttribute("mode","MODE_HOME");
    	model.addAttribute("name", name);
        return "home";
    }
    
    @RequestMapping("/signup")
    public String signup(HttpServletRequest request)
    {
    	request.setAttribute("mode","MODE_REGISTER");
    	return "home";
    }
    
    @RequestMapping("/signin")
    public String signin()
    {
    	return "signin";
    }
    
	/*
	 * @GetMapping("/form") public String formGet() { return "register"; }
	 */
    
    @PostMapping("/form")
    public String formPost(User user, Model model) {

        userDao.save(user);
        return "signin";
    }
    
    @PostMapping("/login")
    public String login(User user, ModelMap model,HttpServletRequest request) {
        User loginUser=userDao.retrieve(user);
    	globalUser=loginUser;
        model.put("user", globalUser);
        if(loginUser!=null)
        {
        	String role=loginUser.getType();
        	if(role.equals("Admin"))
        	{
        		return "admindashboard";
        	}
        	else if(role.equals("NEEDY"))
        	{
        		request.setAttribute("mode","needydashboard");
        		String userName=loginUser.getName();
        		List<NeedyUser> needy=needyDao.needy(userName);
        		if(needy.isEmpty())
        		{
        			return "needyregister";
        		}
        		return "needyuserdashboard";
        	}
           	else if(role.equals("NGO"))
        	{

        		int reg_id=loginUser.getRegistrationId();
        		List<Ngo> ngo=ngoDao.ngo(reg_id);
        		if(ngo.isEmpty())
        		{
        			return "ngoregister";
        		}
        		return "ngodashboard";
        	}
           	else if(role.equals("Volunteer"))
        	{
        		return "socialworker";
        	}
        	return "welcome";
        }
        return "signin";
    }
    
    @RequestMapping("/gotohome")
    public String gotoHome(HttpServletRequest request)
    {
    	request.setAttribute("mode","MODE_HOME");
    	return "home";
    }
    
    @RequestMapping("/chart")
    public String gotoChart(ModelMap model)
    {
    	model.put("user", globalUser);
    	return "chart";
    }
    
    @RequestMapping("/admindashboard")
    public String adminDashboard(ModelMap model)
    {
    	model.put("user", globalUser);
    	return "admindashboard";
    }
    
    @RequestMapping("/ngodashboard")
    public String ngoDashboard(ModelMap model)
    {
    	model.put("user", globalUser);
    	return "ngodashboard";
    }
    
    @RequestMapping("/ngochart")
    public String ngoChart(ModelMap model)
    {
    	model.put("user", globalUser);
    	return "ngochart";
    }
    
    @RequestMapping("/eventdetails")
    public String eventDetails(ModelMap model)
    {
    	model.put("user", globalUser);
    	return "eventdetails";
    }
    
    @RequestMapping("/volunteerregister")
    public String volunteerregister()
    {
    	return "volunteerregister";
    }
    
    @RequestMapping("/aboutus")
    public String aboutus()
    {
    	return "aboutus";
    }
    
    @RequestMapping("/contact")
    public String contact()
    {
    	return "contact";
    }
    
    @RequestMapping("/faq")
    public String faq()
    {
    	return "faq";
    }
    
    @PostMapping("/event")
    public String event(Event event)
    {
		/* event.setUser(globalUser); */
    	eventDao.save(event);
    	return "eventdetails";
    }
    
    @RequestMapping("/help")
    public String help()
    {
    	return "help";
    }
    
    @RequestMapping("/eventlist")
    public String login(Event event,Model model,HttpServletRequest request) {
    	request.setAttribute("mode","EventList");
        List<Event> events=eventDao.retrieve(event);
        System.out.println(events.size());
        model.addAttribute("events", events);
        return "eventlist";
    }
    
    @RequestMapping("/delete-task/{userId}")
    public String deleteEvent(@PathVariable("userId") int id) {
    	eventDao.delete(id);
    	return "redirect:/eventlist";

    }
    
    @RequestMapping("/edit/{userId}")
    public String editEvent(@PathVariable("userId") int id,Model model,HttpServletRequest request) {
    	Event event=eventDao.getEventById(id);
    	model.addAttribute("event",event);
    	request.setAttribute("mode","Edit");
    	return "eventlist";
		/*
		 * eventDao.updateEvent(event); return "redirect:/eventlist";
		 */

    }
    
    @PostMapping("/updateevent/{userId}")
    public String updateEvent(@PathVariable("userId") int id,Event event,Model model) {
    	System.out.println("im in here");
    	Event updateEvent=eventDao.getEventById(id);
    	event.setEventId(id);
    	updateEvent=event;
    	System.out.println(updateEvent.getEventId());
    	eventDao.updateEvent(updateEvent);
        return "redirect:/eventlist";
    }
    
//request    
    @RequestMapping("/volunteer")
    public String getVolunteer(Model model,HttpServletRequest request) {
    	request.setAttribute("mode","Volunteer");
        List<User> userList=socialDao.listVolunteer();
        System.out.println(userList.size());
        model.addAttribute("userList", userList);
        return "eventlist";
    }
    
    @RequestMapping("/needyuser")
    public String getNeedy(Model model,HttpServletRequest request) {
    	request.setAttribute("mode","Needy");
        List<User> needyList=needyDao.listVolunteer();
        model.addAttribute("needyList", needyList);
        return "eventlist";
    }
    
    @RequestMapping("/ngoregister")
    public String ngoRegister(Ngo ngo,ModelMap model) {
    	model.put("user", globalUser);
    	ngoDao.save(ngo);
    	return "ngodashboard";

    }
    
    @RequestMapping("/needyregister")
    public String needyRegister(NeedyUser needy,ModelMap model) {
    	model.put("user", globalUser);
    	needyDao.save(needy);
    	return "needyuserdashboard";

    }
     
    
    
}
