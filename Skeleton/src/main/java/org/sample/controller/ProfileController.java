package org.sample.controller;


import org.sample.model.User;
import org.sample.model.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {
    @Autowired UserDao userDao;

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public ModelAndView specificUser(@RequestParam("userId") Long id) {

    	ModelAndView model;
    	User user = userDao.findOne(id);
    	model = new ModelAndView("profile");
    	model.addObject("user",user);
        return model;
    }
}