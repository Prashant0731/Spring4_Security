package com.yash.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.yash.model.UserProfile;
import com.yash.service.UserProfileService;

@Component
public class RoleToUserProfileConverter implements Converter<Object, UserProfile>{
    @Autowired
    UserProfileService userProfileService;
/*
 * Gets UserProfile by Id
 * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
 */
    public UserProfile convert(Object element) {
    	System.out.println(" RoleToUserProfileConverter, public UserProfile convert(Object element) {  Start } ");
        Integer id = Integer.parseInt((String)element);
        UserProfile profile= userProfileService.findById(id);
        System.out.println("Profile : "+profile);
    	System.out.println(" RoleToUserProfileConverter, public UserProfile convert(Object element) {  End	} ");
        return profile;
    }
     
/*
 * Gets UserProfile by type
 * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
 */
    
/*    public UserProfile convert1 (Object element) {
        String type = (String)element;
        UserProfile profile= userProfileService.findByType(type);
       System.out.println("Profile ... : "+profile);
        return profile;
    }
*/
}
