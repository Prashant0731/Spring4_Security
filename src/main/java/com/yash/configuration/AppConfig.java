package com.yash.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

import com.yash.converter.RoleToUserProfileConverter;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.yash")
public class AppConfig extends WebMvcConfigurerAdapter{
   
	 @Autowired
	    RoleToUserProfileConverter roleToUserProfileConverter;
	     
	    @Bean(name="multipartResolver")
	    public StandardServletMultipartResolver resolver(){
	        return new StandardServletMultipartResolver();
	    }
	 
	    /**
	     * Configure ViewResolvers to deliver preferred views.
	     */
	    public void configureViewResolvers1(ViewResolverRegistry registry) {
	        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
	        viewResolver.setViewClass(JstlView.class);
	        viewResolver.setPrefix("/WEB-INF/views/");
	        viewResolver.setSuffix(".jsp");
	        registry.viewResolver(viewResolver);
	    }
	
	   /* Configure ResourceHandlers to serve static resources like CSS/ Javascript etc. . */    
	   @Override
	   public void addResourceHandlers(ResourceHandlerRegistry registry) {
		   System.out.println(" AppConfig,  addResourceHandlers(ResourceHandlerRegistry registry{ /static/** } ");
		   registry.addResourceHandler("/static/**").addResourceLocations("/static/");
	   }
   
	/*
	* Configure Converter to be used.
	* In our example, we need a converter to convert string values[Roles] to UserProfiles in newUser.jsp
	*/
   @Override
   public void addFormatters(FormatterRegistry registry) {
       System.out.println(" AppConfig, public void addFormatters(FormatterRegistry registry) {} ");
	   registry.addConverter(roleToUserProfileConverter);
   }
   
  /*
   * Configure MessageSource to lookup any validation/error message in internationalized property files
   */
   @Bean
   public MessageSource messageSource() {
       ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
       messageSource.setBasename("messages");
       System.out.println(" AppConfig, public MessageSource messageSource(){} ");
       return messageSource;
   }

   /**Optional. It's only required when handling '.' in @PathVariables which otherwise ignore everything after last '.' in @PathVaidables argument.
    * It's a known bug in Spring [<a class="vglnk" href="https://jira.spring.io/browse/SPR-6164" rel="nofollow"><span>https</span><span>://</span><span>jira</span><span>.</span><span>spring</span><span>.</span><span>io</span><span>/</span><span>browse</span><span>/</span><span>SPR</span><span>-</span><span>6164</span></a>], still present in Spring 4.1.7.
    * This is a workaround for this issue.
    */
   @Override
   public void configurePathMatch(PathMatchConfigurer matcher) {
       matcher.setUseRegisteredSuffixPatternMatch(true);
   }
   
   
   
   
 /**********************************************************/  
   /**
    * Configure TilesConfigurer.
    */
   @Bean
   public TilesConfigurer tilesConfigurer(){
       TilesConfigurer tilesConfigurer = new TilesConfigurer();
       tilesConfigurer.setDefinitions(new String[] {"/WEB-INF/views/**/tiles.xml"});
       tilesConfigurer.setCheckRefresh(true);
       return tilesConfigurer;
   }

   /**
    * Configure ViewResolvers to deliver preferred views.
    */
   @Override
   public void configureViewResolvers(ViewResolverRegistry registry) {
       TilesViewResolver viewResolver = new TilesViewResolver();
       registry.viewResolver(viewResolver);
   }
}
