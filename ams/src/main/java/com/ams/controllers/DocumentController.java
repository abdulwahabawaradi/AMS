package com.ams.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.ams.service.DocumentService;

@RestController
@RequestMapping("/document")
public class DocumentController {

	@Autowired
	DocumentService documentService; 
	
	@RequestMapping(value = "/singleFileUpload", method = RequestMethod.POST)
	   public String singleFileUpload(@RequestParam("file") MultipartFile file, Model model)
	         throws IOException {

	      // Save file on system
	      if (!file.getOriginalFilename().isEmpty()) {
	         BufferedOutputStream outputStream = new BufferedOutputStream(
	               new FileOutputStream(
	                     new File("F:\\Software\\project\\ams\\WebContent\\resources\\upload", file.getOriginalFilename())));
	         outputStream.write(file.getBytes());
	         outputStream.flush();
	         outputStream.close();

	         model.addAttribute("msg", "File uploaded successfully.");
	      } else {
	         model.addAttribute("msg", "Please select a valid file..");
	      }

	      return "add_document";
	   }
   
}
