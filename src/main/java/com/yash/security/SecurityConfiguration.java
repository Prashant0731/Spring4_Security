package com.yash.security;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	 
	 @Autowired
	 @Qualifier("customUserDetailsService")
	 UserDetailsService userDetailsService;
	 
	 @Autowired
	 DataSource dataSource;
	
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		 System.out.println(" SecurityConfiguration ,public void configureGlobalSecurity(AuthenticationManagerBuilder auth){} ");
	        auth.userDetailsService(userDetailsService);
	}
	 
/*
 * In above configuration, we say that URL’s ‘/’ & ‘/home’ are not secured, anyone can access them. 
 * URL ‘/admin/**’ can only be accessed by someone who have ADMIN role. 
 * URL ‘/db/**’ can only be accessed by someone who have both ADMIN and DBA roles.
 */ 
	@Override
	protected void configure(HttpSecurity http) throws Exception {
	System.out.println(" SecurityConfiguration, protected void configure(HttpSecurity http) throws Exception {} ");
	http.authorizeRequests()
		.antMatchers("/", "/home").permitAll()
		.antMatchers("/admin/**").access("hasRole('ADMIN')")
		.antMatchers("/parent/**").access("hasRole('PARENT')")
		.antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")
		.and().formLogin().loginPage("/login")
		.usernameParameter("ssoId").passwordParameter("password")
		.and().csrf()
		.and().exceptionHandling().accessDeniedPage("/Access_Denied");
	
	
/*	.antMatchers("/").permitAll()
	.access("hasRole('USER') or hasRole('ADMIN') or hasRole('DBA')")
	
	.antMatchers("/newuser/**","/delete-user-*")
	.access("hasRole('ADMIN')")

	.antMatchers("/edit-user-*")		
	.access("hasRole('ADMIN') or hasRole('DBA')")
	
	.and().formLogin().loginPage("/login")
	.loginProcessingUrl("/login")
	
	.usernameParameter("ssoId").passwordParameter("password")
	.and().csrf().and().exceptionHandling().accessDeniedPage("/Access_Denied");
*/	
	}
}
