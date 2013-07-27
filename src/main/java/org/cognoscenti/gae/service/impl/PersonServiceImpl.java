package org.cognoscenti.gae.service.impl;

import java.util.List;

import org.cognoscenti.gae.dao.GenericDataAccessObject;
import org.cognoscenti.gae.domain.Person;
import org.cognoscenti.gae.service.PersonService;

public class PersonServiceImpl implements PersonService {
	private GenericDataAccessObject dataAccessObject;
	
	public PersonServiceImpl() { }
	
	@Override
	public Person add(Person person) {
		return (Person) dataAccessObject.add(person);
	}
	
	@Override
	public List<Person> listPersons() {
		return dataAccessObject.list(Person.class);
	}

	/**
	 * @return the dataAccessObject
	 */
	public GenericDataAccessObject getDataAccessObject() {
		return dataAccessObject;
	}

	/**
	 * @param dataAccessObject the dataAccessObject to set
	 */
	public void setDataAccessObject(GenericDataAccessObject dataAccessObject) {
		this.dataAccessObject = dataAccessObject;
	}
}