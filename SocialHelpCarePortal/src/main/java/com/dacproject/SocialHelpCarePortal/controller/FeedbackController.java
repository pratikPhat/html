package com.dacproject.SocialHelpCarePortal.controller;

import javax.validation.ValidationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;

import com.dacproject.SocialHelpCarePortal.email_service.EmailConfig;
import com.dacproject.SocialHelpCarePortal.model.Feedback;

@Controller
public class FeedbackController {

	@Autowired 
	private EmailConfig email;
	
	public FeedbackController(EmailConfig email) {
		this.email=email;
	}
	
	@PostMapping("/feedback")
	public void feedback(Feedback feedback,BindingResult bindingResult)
	{
		if(bindingResult.hasErrors())
		{
			throw new ValidationException("Feedback is not Valid");
		}
		
		JavaMailSenderImpl mailSender=new JavaMailSenderImpl();
		mailSender.setHost(this.email.getHost());
		mailSender.setPort(this.email.getPort());
		mailSender.setUsername(this.email.getUsername());
		mailSender.setPassword(this.email.getPassword());
		
		SimpleMailMessage mailMessage=new SimpleMailMessage();
		mailMessage.setFrom(feedback.getMail());
		mailMessage.setTo("mrityunjayrai16@gmail.com");
		mailMessage.setSubject("New Feedback From: "+ feedback.getName());
		mailMessage.setText(feedback.getMessage()+ "  " + feedback.getPhone());
		
		mailSender.send(mailMessage);
	}
}
