package com.yash.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
    	System.out.println(" SpringMvcInitializer, protected Class<?>[] getRootConfigClasses(){} ");
        return new Class[] { AppConfig.class };
    }
    @Override
    protected Class<?>[] getServletConfigClasses() {
    	System.out.println(" SpringMvcInitializer, protected Class<?>[] getServletConfigClasses(){} ");
        return null;
    }
    @Override
    protected String[] getServletMappings() {
    	System.out.println(" SpringMvcInitializer, protected String[] getServletMappings(){} ");
        return new String[] { "/" };
    }
}