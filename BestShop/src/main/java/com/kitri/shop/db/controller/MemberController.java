package com.kitri.shop.db.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kitri.shop.db.dto.Member;
import com.kitri.shop.repository.MemberRepository;

@Controller
public class MemberController {
	
	@Autowired
	MemberRepository memRepository;
	
	@RequestMapping(value="/signin", method=RequestMethod.GET)
	public String viewSignin() {
		return "signin";
	}
	
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public String singinComplete(@ModelAttribute("memberInfo") Member member) throws Exception {
		System.out.println(member.getName());
		System.out.println(member.getID());
		memRepository.save(member);
		return "login";
	}
		
	@RequestMapping("/login")
	public String loginComplete(
			@RequestParam(value="loginid") String id,
			@RequestParam(value="loginpwd") String pwd,
			HttpServletRequest request, Model model){
		System.out.println("아이디" + id + " " + pwd);
		return "login";
	}	
	
}