package com.yash.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yash.dao.UserDao;
import com.yash.model.User;


@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
 
    @Autowired
    private UserDao dao;
 
    public User findById(int id) {
        System.out.println(" UserServiceImpl,  public User findById(int id){} ");
        return dao.findById(id);
    }
    
    public User findBySso(String sso) {
        System.out.println(" UserServiceImpl, public User findBySso(String sso){ Start } ");
        User user = dao.findBySSO(sso);
        System.out.println(" UserServiceImpl, public User findBySso(String sso){ End } ");
        return user;
    }
    
    public void save(User user){
//      user.setPassword(passwordEncoder.encode(user.getPassword()));
        System.out.println(" UserServiceImpl, public void save(User user){}");
    	dao.save(user);
    }
    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
    public void updateUser(User user) {
        User entity = dao.findById(user.getId());
        if(entity!=null){
            entity.setSsoId(user.getSsoId());
            if(!user.getPassword().equals(entity.getPassword())){
    //          entity.setPassword(passwordEncoder.encode(user.getPassword()));
            }
            entity.setFirstName(user.getFirstName());
            entity.setLastName(user.getLastName());
            entity.setEmail(user.getEmail());
            entity.setUserProfiles(user.getUserProfiles());
        }
    }
     
    public List<User> findAllUsers() {
    	System.out.println(" UserServiceImpl, public List<User> findAllUsers() {} ");
        return dao.findAllUsers();
    }
    
    public boolean isUserSSOUnique(Integer id, String sso){
    	System.out.println(" UserServiceImpl, public boolean isUserSSOUnique(Integer id, String sso){} ");
        User user = findBySso(sso);
        return ( user == null || ((id != null) && (user.getId() == id)));
    }
    
    public void deleteUserBySSO(String sso) {
        dao.deleteBySSO(sso);
    }

}