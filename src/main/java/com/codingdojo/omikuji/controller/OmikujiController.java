package com.codingdojo.omikuji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class OmikujiController {
	
	@GetMapping("/")
	public String index() {
		return "redirect:/home";
	}
	
	@GetMapping("/home")
	public String rForm(HttpSession session, Model model) {
		
		String result = (String) session.getAttribute("result");
		model.addAttribute("result", result);
		
		return "form.jsp";
	}

	@PostMapping("/submit")
	public String sForm(
			@RequestParam(value="number") Integer number,
			@RequestParam(value="city") String city,
			@RequestParam(value="name") String name,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="type") String type,
			@RequestParam(value="message") String message,
			HttpSession session) {
				String resultForm = String.format(
				"In %s years you will live in %s with %s as your roommate, %s. The next time you see a %s, you will have good luck. Also, %s.",
				number, city, name, hobby, type, message);
				session.setAttribute("result", resultForm);
				return "redirect:/show";			
	}
	
	@GetMapping("/show")
	public String rShow() {
		return "show.jsp";
	}

}
