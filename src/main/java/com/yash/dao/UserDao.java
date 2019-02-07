package com.yash.dao;

import java.util.List;

import com.yash.model.User;

public interface UserDao {
     
    void save(User user);
    
    User findById(int id);
     
    User findBySSO(String sso);
    
    List<User> findAllUsers();
    
    void deleteBySSO(String sso);
}
