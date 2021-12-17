package com.forum.csee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.forum.csee.vo.BoardVO;
import com.forum.csee.service.ServiceImpl;


/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	@Autowired
	ServiceImpl service;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainPage(Model model){
		
		List<BoardVO> board = service.getPostList();
		int num = service.getNumberOfPosts();
		
		model.addAttribute("board", board);
		model.addAttribute("num", num);
		
		return "home";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String writePost(){
		return "addForm";
	}
	
	@RequestMapping(value = "/writing-complete", method = RequestMethod.POST)
	public String uploadPost(BoardVO vo){
		
		service.writePost(vo);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/visit/{postNo}")
	public String visitPost(@PathVariable("postNo") int no, BoardVO vo, Model model){
		
		model.addAttribute("post", service.readPost(no, vo));
		
		return "post";
	}
}