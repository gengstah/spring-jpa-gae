package org.cognoscenti.gae.service;

import java.util.List;

import org.cognoscenti.gae.domain.Person;

public interface PersonService {
	Person add(Person person);
	List<Person> listPersons();
}