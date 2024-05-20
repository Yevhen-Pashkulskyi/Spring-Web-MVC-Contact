package org.example.service.impl.contact;

import jakarta.transaction.Transactional;
import org.example.entity.Contact;
import org.example.repository.impl.contact.ContactRepository;
import org.example.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
public class ContactServiceImpl implements ContactService {
    @Autowired
    ContactRepository contactRepository;

    @Override
    @Transactional
    public boolean createContact(Contact contact) {
        return contactRepository.create(contact);
    }

    @Override
    @Transactional
    public List<Contact> fetchAll() {
        return contactRepository.fetchAll().orElse(Collections.emptyList());
    }

    @Override
    @Transactional
    public Contact fetchById(Long id) {
        return contactRepository.fetchById(id).orElse(null);
    }

    @Override
    @Transactional
    public boolean updateContact(Long id, Contact contact) {
        return contactRepository.update(id, contact);
    }

    @Override
    @Transactional
    public boolean deleteContact(Long id) {
        Optional<Contact> optional = contactRepository.fetchById(id);
        if (optional.isPresent()) {
            return contactRepository.delete(id);
        }
        return false;
    }
}
