package com.yash.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.yash.model.UserProfile;

@Repository("userProfileDao")
public class UserProfileDaoImpl extends AbstractDao<Integer, UserProfile> implements UserProfileDao{
		 
	    public UserProfile findById(int id) {
	    	System.out.println(" UserProfileDaoImpl, public UserProfile findById(int id) ");
	        return getByKey(id);
	    }
	    
	    public UserProfile findByType(String type) {
	    	System.out.println(" UserProfileDaoImpl ,public UserProfile findByType(String type) { start }");
	        Criteria crit = createEntityCriteria();
	        crit.add(Restrictions.eq("type", type));
	        System.out.println(" UserProfileDaoImpl ,public UserProfile findByType(String type) { end }");
	        return (UserProfile) crit.uniqueResult();
	    }
	    
	    @SuppressWarnings("unchecked")
	    public List<UserProfile> findAll(){
	    	System.out.println(" UserProfileDaoImpl, public List<UserProfile> findAll(){ start } ");
	        Criteria crit = createEntityCriteria();
	        System.out.println(" get values and binding  crit - createEntityCriteria() ");
	        crit.addOrder(Order.asc("type"));
	        System.out.println(" UserProfileDaoImpl, public List<UserProfile> findAll(){ end } ");
	        return (List<UserProfile>)crit.list();
	    }
   
}
