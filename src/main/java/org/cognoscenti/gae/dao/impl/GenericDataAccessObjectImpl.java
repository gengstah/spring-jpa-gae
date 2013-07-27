package org.cognoscenti.gae.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.cognoscenti.gae.dao.GenericDataAccessObject;

public class GenericDataAccessObjectImpl implements GenericDataAccessObject {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Object add(Object o) {
		em.persist(o);
		return o;
	}

	@Override
	public Object update(Object o) {
		return em.merge(o);
	}

	@Override
	public void remove(Object o) {
		em.remove(o);
	}

	@Override
	public <T> T get(Object id, Class<T> clazz) {
		return em.find(clazz, id);
	}
	
	@Override
	public <T> List<T> list(Class<T> clazz) {
		String query = "SELECT c FROM " + clazz.getName() + " c";
		return em.createQuery(query, clazz)
				.getResultList();
	}

	public EntityManager getEm() {
		return em;
	}

	public void setEm(EntityManager em) {
		this.em = em;
	}
}