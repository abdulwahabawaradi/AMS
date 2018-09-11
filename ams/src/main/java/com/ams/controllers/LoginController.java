package com.ams.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ams.beans.LoginBean;
import com.ams.utils.RequestUtil;

@Controller
@RequestMapping("/login")
public class LoginController {

	@RequestMapping(value = "/validateLogin")
	public String validateLogin(ModelMap model, HttpServletRequest request) {

		String username = request.getParameter("username");
		String pwd = request.getParameter("pass");

		if (username.equals("admin") && pwd.equals("admin")) {
			LoginBean loginBean = RequestUtil.setLoginRequestToBean(request);

			String landingPage = "dashboard";// returnView(loginBean);

			model.addAttribute("failMessage", "Please enter valid credentials");

			return landingPage;
		}
		model.addAttribute("Msg", "Please Provide Correct Password");

		return "login";
	}

	@RequestMapping(value = "/validateLoginOwner")
	public String validateLogin1(ModelMap model, HttpServletRequest request) {

		String username = request.getParameter("username");
		String pwd = request.getParameter("pass");

		if (username.equals("user") && pwd.equals("user")) {

			LoginBean loginBean = RequestUtil.setLoginRequestToBean(request);

			String landingPage = "owner_dashboard";// returnView(loginBean);

			model.addAttribute("failMessage", "Please enter valid credentials");

			return landingPage;
		}
		model.addAttribute("Msg", "Please Provide Correct Password");

		return "login";
	}

	private String returnView(LoginBean loginBean) {

		String landingPage = "";
		if ("admin".equals(loginBean.getUserName())) {
			System.out.println("admin");
			landingPage = "dashboard";
		} else {
			landingPage = "login";
		}
		System.out.println("landingPage :" + landingPage);
		return landingPage;
	}

}
