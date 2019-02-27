package com.yash.model;

public enum State {
	 
    ACTIVE("Active"),
    INACTIVE("Inactive"),
    DELETED("Deleted"),
    LOCKED("Locked");
     
    private String state;
     
    private State(final String state){
    	System.out.println(" State, private State(final String state){} ");
        this.state = state;
    }
     
    public String getState(){
    	System.out.println("  State, public String getState(){} ");
        return this.state;
    }
 
    @Override
    public String toString(){
    	System.out.println(" State, public String toString(){} ");
        return this.state;
    }
    
    public String getName(){
    	System.out.println(" State, public String getName(){ ");
        return this.name();
    }
}
