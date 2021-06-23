package com.nagarro.controller;

import entity.Employee;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import services.EmployeeService;
import services.EmployeeServiceImpl;
import services.UserDetailService;
import services.UserDetailServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;

@Controller
public class LoginController {
    private  UserDetailService userDetailService;
    public LoginController()
    {
         userDetailService=new UserDetailServiceImpl();
    }
    /*
   This mapping will be called when user starts the application
   */
    @RequestMapping("/HrLogin")
    public String HrLogin(Model m) {
        m.addAttribute("user", new entity.User());
        return "/HrLogin";
    }
    /*
       This mapping will be called when user click on the login button
       */
    @RequestMapping(value = "/ValidateUser")
      public ModelAndView ValidateUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDetailService userDetailService=new UserDetailServiceImpl();
        User user=new User();
        user.setUsername(username);
        user.setPassword(password);
        boolean isValid= userDetailService.getUserDetails(user);

        ModelAndView mv = new ModelAndView();
        if(isValid) {
            mv.setViewName("Employee");	//we don't need to mention extension because we have already mentioned it in config file
            mv.addObject("user", user);
        } else {
            mv.setViewName("error");
            mv.addObject("errorMessage", "Invalid username or password");
        }

        return mv;
    }

}
