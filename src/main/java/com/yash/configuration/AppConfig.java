package com.yash.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.yash.converter.RoleToUserProfileConverter;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.yash")
public class AppConfig extends WebMvcConfigurerAdapter{
   
	@Autowired
	RoleToUserProfileConverter roleToUserProfileConverter;
	
   @Bean
   public ViewResolver viewResolver() {
	   System.out.println(" HelloWorldConfiguration, ViewResolver(){ } ");
	   InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
	   viewResolver.setViewClass(JstlView.class);
	   viewResolver.setPrefix("/WEB-INF/views/");
	   viewResolver.setSuffix(".jsp");
	   return viewResolver;
   }

   /* Configure ResourceHandlers to serve static resources like CSS/ Javascript etc. . */    
   @Override
   public void addResourceHandlers(ResourceHandlerRegistry registry) {
	   System.out.println(" HelloWorldConfiguration,  addResourceHandlers(ResourceHandlerRegistry registry{ /static/** } ");
	   registry.addResourceHandler("/static/**").addResourceLocations("/static/");
   }
   
/*
* Configure Converter to be used.
* In our example, we need a converter to convert string values[Roles] to UserProfiles in newUser.jsp
*/
   @Override
   public void addFormatters(FormatterRegistry registry) {
       System.out.println(" HelloWorldConfiguration, public void addFormatters(FormatterRegistry registry) {} ");
	   registry.addConverter(roleToUserProfileConverter);
   }
   
   @Bean
   public MessageSource messageSource() {
       ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
       messageSource.setBasename("messages");
       System.out.println(" AppConfig, public MessageSource messageSource(){} ");
       return messageSource;
   }
}
