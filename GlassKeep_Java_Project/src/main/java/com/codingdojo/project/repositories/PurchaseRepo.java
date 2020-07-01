package com.codingdojo.project.repositories;

import java.util.List;


import org.springframework.data.repository.CrudRepository;

import com.codingdojo.project.models.Purchase;

public interface PurchaseRepo extends CrudRepository<Purchase, Long>  {
	List <Purchase> findAll();

}
