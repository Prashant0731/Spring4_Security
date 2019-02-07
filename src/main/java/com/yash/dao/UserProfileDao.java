package com.yash.dao;

import java.util.List;

import com.yash.model.UserProfile;

public interface UserProfileDao {
    List<UserProfile> findAll();
    UserProfile findByType(String type);
    UserProfile findById(int id);
}
