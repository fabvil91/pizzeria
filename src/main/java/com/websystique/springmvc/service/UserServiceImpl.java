package com.websystique.springmvc.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Service;

import com.websystique.springmvc.model.User;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	private static final AtomicLong counter = new AtomicLong();
	
	private static List<User> users;
	
	static{
		users= populateDummyUsers();
	}

	public List<User> findAllUsers() {
		return users;
	}
	
	public User findById(long id) {
		for(User user : users){
			if(user.getId() == id){
				return user;
			}
		}
		return null;
	}
	
	public User findByName(String name) {
		for(User user : users){
			if(user.getNombre().equalsIgnoreCase(name)){
				return user;
			}
		}
		return null;
	}
	
	public void saveUser(User user) {
		user.setId(counter.incrementAndGet());
		users.add(user);
	}

	public void updateUser(User user) {
		int index = users.indexOf(user);
		users.set(index, user);
	}

	public void deleteUserById(long id) {
		
		for (Iterator<User> iterator = users.iterator(); iterator.hasNext(); ) {
		    User user = iterator.next();
		    if (user.getId() == id) {
		        iterator.remove();
		    }
		}
	}

	public boolean isUserExist(User user) {
		return findByName(user.getNombre())!=null;
	}
	
	public void deleteAllUsers(){
		users.clear();
	}

	private static List<User> populateDummyUsers(){
		List<User> users = new ArrayList<User>();
		users.add(new User(counter.incrementAndGet(),"Muzzarella", "Con mucha Muzzarella, es la especialidad de la casa", 125.5D,180D));
		users.add(new User(counter.incrementAndGet(),"Americana", "Mucho tomate, Muzzarella y cebolla hacen un manjar de esta pizza", 122D,222D));
		users.add(new User(counter.incrementAndGet(),"Anchoas", "El acompañamiento de las anchoas a la Muzzarella da un sabor único", 132D,222D));
		users.add(new User(counter.incrementAndGet(),"Salame", "El acompañamiento del salame a la Muzzarella da un sabor único", 92D,233D));
		users.add(new User(counter.incrementAndGet(),"Fugazzeta", "El acompañamiento de la cebolla a la Muzzarella da un sabor único", 212D,299D));
		return users;
	}

}
