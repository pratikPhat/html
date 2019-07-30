package com.dacproject.SocialHelpCarePortal;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;

@SpringBootApplication(exclude = HibernateJpaAutoConfiguration.class)
public class SocialHelpCarePortalApplication {

	public static void main(String[] args) {
		SpringApplication.run(SocialHelpCarePortalApplication.class, args);
	}

}
