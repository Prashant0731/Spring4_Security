package com.yash.dao;

import org.springframework.stereotype.Repository;

import com.yash.model.Contact;

@Repository("contactDao")
public class ContactDaoImpl extends AbstractDao<Integer, Contact> implements ContactDao {

	
    public void save(Contact contact) {
    	System.out.println(" ContactDaoImpl, public void save(User user) {} ");
        persist(contact);
    }

}
