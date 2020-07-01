package com.codingdojo.project.repositories;


import org.springframework.data.repository.CrudRepository;

import com.codingdojo.project.models.User;

public interface UserRepo extends CrudRepository<User, Long> {
	User findByEmail(String email);

}
