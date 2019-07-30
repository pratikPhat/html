package com.dacproject.SocialHelpCarePortal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dacproject.SocialHelpCarePortal.dao.NeedyUserDao;
import com.dacproject.SocialHelpCarePortal.dao.NgoDao;
import com.dacproject.SocialHelpCarePortal.model.Event;
import com.dacproject.SocialHelpCarePortal.model.Ngo;
import com.dacproject.SocialHelpCarePortal.model.User;

@Controller
public class NeedyController {
	
	  @Autowired
	  private NeedyUserDao needyDao;
	  @Autowired
	  private NgoDao ngoDao;

    @RequestMapping("/ngolist")
    public String ngoList(Event event,Model model,HttpServletRequest request) {
    	request.setAttribute("mode","NeedyNgo");
        List<User> ngoList=needyDao.listNgo();
        System.out.println(ngoList.size());
        model.addAttribute("ngoList", ngoList);
        return "eventlist";
    }
    
    @RequestMapping("/ngodetails/{regId}")
    public String ngoDetail(@PathVariable("regId") int id,Model model,HttpServletRequest request) {
    	request.setAttribute("mode","NgoDetail");
        List<Ngo> ngoDetail=ngoDao.ngo(id);
        System.out.println(ngoDetail.size());
        model.addAttribute("ngoDetail", ngoDetail);
        return "eventlist";
    }
    
}
