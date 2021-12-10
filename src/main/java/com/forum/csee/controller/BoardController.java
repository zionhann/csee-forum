package com.forum.csee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainPage(){
		
		return "home";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String writePost(){
		
		return "addForm";
	}
	
	@RequestMapping(value = "/writing-complete", method = RequestMethod.POST)
	public String uploadPost(){
		
		return "redirect:/";
	}
}