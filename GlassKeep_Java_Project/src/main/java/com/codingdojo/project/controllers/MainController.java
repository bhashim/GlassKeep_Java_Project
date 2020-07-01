package com.codingdojo.project.controllers;



import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.project.models.Purchase;
import com.codingdojo.project.models.User;
import com.codingdojo.project.services.PurchaseService;
import com.codingdojo.project.services.UserService;
import com.codingdojo.project.validators.UserValidator;


public class MainController {
	private final UserService userService;
	private UserValidator userValidator;
	private final PurchaseService purchaseService;
	
	
	public MainController(UserService userService, UserValidator userValidator, PurchaseService purchaseService) {
		this.userService = userService;
		this.userValidator = userValidator;
		this.purchaseService = purchaseService;
	}

	@RequestMapping("/")
	public String index(@ModelAttribute("user") User user) {
		return "index.jsp";
	}

	
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			return "index.jsp";
		}
		User u = userService.registerUser(user);
		session.setAttribute("userId", u.getId());
		return "redirect:/tasks";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, Model model,
			HttpSession session, @ModelAttribute("user") User user) {
		boolean isAuthenticated = userService.authenticateUser(email, password);
		if (isAuthenticated) {
			User u = userService.findByEmail(email);
			session.setAttribute("userId", u.getId());
			return "redirect:/tasks";
		} else {
			model.addAttribute("user", new User());
			model.addAttribute("error", "Invalid Credentials. Please try again.");
			return "index.jsp";
		}
	}
	@RequestMapping("/home")
	public String homepage(HttpSession session, Model Model) {
		if (session.getAttribute("userId") != null) {
			Long userId = (Long) session.getAttribute("userId");
			User u = userService.findUserById(userId);
			Model.addAttribute("user", u);
			List<Purchase> purchaselist = purchaseService.getAll();
			Model.addAttribute("purchase", purchaselist);
			return "homePage.jsp";

		} else {
			System.out.println("You have not logged in");
			return "redirect:/";
		}
	}
	
   @RequestMapping("/about")
   public String about(HttpSession session, Model Model) {
	   return "about.jsp";
   }

	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}
