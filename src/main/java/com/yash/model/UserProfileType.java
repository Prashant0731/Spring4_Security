package com.yash.model;

public enum UserProfileType {
	
    USER("USER"),
    DBA("DBA"),
    ADMIN("ADMIN"),
	PARENT("PARENT");
	
    String userProfileType;
    
    private UserProfileType(String userProfileType){
    	System.out.println(" UserProfileType, private UserProfileType(String userProfileType){} ");
        this.userProfileType = userProfileType;
    }
     
    public String getUserProfileType(){
    	System.out.println(" UserProfileType, public String getUserProfileType(){} ");
        return userProfileType;
    }
}
