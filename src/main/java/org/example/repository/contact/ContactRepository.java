package org.example.repository.contact;

import org.example.entity.Contact;

import java.util.List;
import java.util.Optional;

public interface ContactRepository {
    boolean create(Contact contact);

    Optional<List<Contact>> fetchAll();

    Optional<Contact> fetchById(Long id);

    boolean update(Long id, Contact contact);

    boolean delete(Long id);
}
