package org.example.service;

import org.example.entity.Contact;

import java.util.List;

public interface ContactService {
    boolean createContact(Contact contact);

    List<Contact> fetchAll();

    Contact fetchById(Long id);

    boolean updateContact(Long id, Contact contact);

    boolean deleteContact(Long id);
}
