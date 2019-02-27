package com.yash.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.yash.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {
 
    public User findById(int id) {
    	System.out.println(" UserDaoImpl, public User findById(int id) ");
    	User user = getByKey(id);
    	if(user !=null){
    		Hibernate.initialize(user.getUserProfiles());
    	}
    	return user;
    }
    
    public User findBySSO(String sso) {
    	System.out.println(" UserDaoImpl, public User findBySSO(String sso){start} ");
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("ssoId", sso));
    	System.out.println(" UserDaoImpl, public User findBySSO(String sso){end} ");
    	User user = (User)crit.uniqueResult();
    	if(user != null){
    		Hibernate.initialize(user.getUserProfiles());
    	}
    	return user;
    }  
 
    public void save(User user) {
    	System.out.println(" UserDaoImpl, public void save(User user) {} ");
        persist(user);
    }    
    
    @SuppressWarnings("unchecked")
    public List<User> findAllUsers() {
    	System.out.println(" UserDaoImpl, public List<User> findAllUsers(){ Start }  ");
        Criteria criteria = createEntityCriteria().addOrder(Order.asc("firstName"));
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
        List<User> users = (List<User>) criteria.list();
         
        // No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
        // Uncomment below lines for eagerly fetching of userProfiles if you want.
        /*
        for(User user : users){
            Hibernate.initialize(user.getUserProfiles());
        }*/
    	System.out.println(" UserDaoImpl, public List<User> findAllUsers(){ End}  ");
        return users;
    }
    
    public void deleteBySSO(String sso) {
    	System.out.println(" UserDaoImpl, public void deleteBySSO(String sso) {Start} ");
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("ssoId", sso));
        User user = (User)crit.uniqueResult();
    	System.out.println(" UserDaoImpl, public void deleteBySSO(String sso) {End} ");
        delete(user);
    }

}
