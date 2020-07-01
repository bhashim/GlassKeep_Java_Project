package com.codingdojo.project.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.project.models.Purchase;
import com.codingdojo.project.repositories.PurchaseRepo;

@Service
public class PurchaseService {
    // adding the book repository as a dependency
	@Autowired
    private final PurchaseRepo purchaseRepo;
    
    public PurchaseService(PurchaseRepo purchaseRepo) {
        this.purchaseRepo = purchaseRepo;
    }
    // returns all the books
    public List<Purchase> allPurchases() {
        return purchaseRepo.findAll();
    }
    // creates a book
    public Purchase createPurchase(Purchase p) {
        return purchaseRepo.save(p);
    }
    // retrieves a book
    public Purchase findPurchase(Long id) {
        Optional<Purchase> optionalPurchase = purchaseRepo.findById(id);
        if(optionalPurchase.isPresent()) {
            return optionalPurchase.get();
        } else {
            return null;
        }
    }
	public List<Purchase> getAll() {
		return (List<Purchase>) purchaseRepo.findAll();
		
	}
}