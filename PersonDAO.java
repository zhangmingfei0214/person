package com.imooc.ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.imooc.ssh.entity.Person;

/**
 *DAO类
 */

@Repository
public class PersonDAO {
	
	@Resource
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unused")
	private Session getSesion() {
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<Person> getPersons() {
		return (List<Person>)this.getSesion().createCriteria(Person.class).list();
	}
	
	public Person getPersonById(String id) {
		return (Person) ((Query) this.getSesion().createCriteria("from Person where id = ?")).setParameter(0,id).uniqueResult();
		
		
	}
	public void addPerson(Person person) {
		this.getSesion().save(person);
	}
	
	public void updatePerson(Person person) {
		this.getSesion().update(person);
	}
	
	public void deletePersonById(String id) {
		this.getSesion().createQuery("delete Person where id = ?")
		.setParameter(0, id).executeUpdate();
	}
}
