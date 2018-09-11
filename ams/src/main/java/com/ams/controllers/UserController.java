package com.ams.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ams.beans.FlatBean;
import com.ams.beans.UserBean;
import com.ams.service.UserService;
import com.ams.utils.RequestUtil;

/**
 * This is user CRUD controller
 * @author Rajshekhar
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService; 

	
	@RequestMapping(value ="/get/", method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model ) {
		model.addAttribute("userBeans",userService.findAll());
		return "view_users";
	}


	@RequestMapping(value = "/find/{id}", method = RequestMethod.GET)
	public ResponseEntity<UserBean> findById(String id) {
		return new ResponseEntity<UserBean>(userService.findById(id), HttpStatus.OK);
	}
	
	@RequestMapping(value = "/add/", method = RequestMethod.POST)
	public String createUser(ModelMap model, HttpServletRequest request){
		System.out.println("In Controller");
		UserBean userBean = RequestUtil.createUserRequest(request,"add");
		userService.add(userBean);
		return "add_user";
	}
	
	@RequestMapping(value = "/updateUser/", method = RequestMethod.POST)
	public String updateUser(ModelMap model, HttpServletRequest request){	
		System.out.println("in update User method");
		UserBean userBean = RequestUtil.updateUserRequest(request,"update");	
		System.out.println("Update Bean :" +userBean);
		userService.update(userBean);
		return "view_user";
	}

	@RequestMapping(value = "/deleteUser/", method = RequestMethod.POST)
	public ResponseEntity<?> delete( HttpServletRequest request) {
		System.out.println("Delete maintenance controller");
		String userId = request.getParameter("user_id");
		userService.delete(userId);
		System.out.println("maintenanceId :"+userId);
		return new ResponseEntity<String>(HttpStatus.CREATED);
		
	}
}
