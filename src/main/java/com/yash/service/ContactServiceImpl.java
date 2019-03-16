package com.yash.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yash.dao.ContactDao;
import com.yash.model.Contact;

@Service("contactService")
@Transactional
public class ContactServiceImpl implements ContactService {

    @Autowired
    private ContactDao contactDao;
    
	public void saveContact(Contact contact) {
		contactDao.save(contact);
	}
}
