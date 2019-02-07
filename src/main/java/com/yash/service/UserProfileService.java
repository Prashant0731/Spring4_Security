package com.yash.service;

import java.util.List;

import com.yash.model.UserProfile;

public interface UserProfileService {
    List<UserProfile> findAll();
    UserProfile findByType(String type);
    UserProfile findById(int id);
}
