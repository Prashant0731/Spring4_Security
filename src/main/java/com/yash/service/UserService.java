package com.yash.service;

import java.util.List;

import com.yash.model.User;

public interface UserService {
	
	void save(User user);
    User findById(int id);
    User findBySso(String sso);
    
    List<User> findAllUsers();
    void updateUser(User user);
    void deleteUserBySSO(String sso);
    boolean isUserSSOUnique(Integer id, String sso);
}