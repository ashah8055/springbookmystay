package bookmystay.web.controller;

import java.util.Date;
import java.util.HashSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import bookmystay.model.Room;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

import bookmystay.model.Reservation;
import bookmystay.model.Room;
import bookmystay.model.SecurityCard;
import bookmystay.model.UserAddress;
import bookmystay.model.User;
import bookmystay.model.dao.ReservationDao;
import bookmystay.model.dao.RoomDao;
import bookmystay.model.dao.SecurityCardDao;
import bookmystay.model.dao.UserDao;
import bookmystay.security.SecurityUtils;
import java.util.List;

@Controller
public class UserController {
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	ReservationDao resDao;
	
	@Autowired
	private RoomDao roomDao;
	
	/*@Autowired
	SecurityCardDao securityDao;*/

	// first page after login	
	@RequestMapping(value="/user/HomeView.html",method=RequestMethod.GET)
	
	public String home(ModelMap model)
	{
		User user = SecurityUtils.getUser();
		model.put("user", user);

		return "user/HomeView";
	}
	
	// user registration 
		 @RequestMapping(value="/Signupview.html",method=RequestMethod.GET)
		public String Signupview(HttpServletRequest request,@ModelAttribute User user,BindingResult result)
		{
			return "user/SignupView";
		}
		
	

	 @RequestMapping(value="/Signup.html",method=RequestMethod.POST)
	  
	    public String addUser(@ModelAttribute("SpringWeb")User user,
	                                ModelMap model) {
		HashSet s=new HashSet();
		s.add("ROLE_USER");
		 
		 user.setRoles(s); 
		 
		 userDao.SaveUser(user);
		  return "login";
	    }
	 
	 @RequestMapping(value="/user/EditProfile.html",method=RequestMethod.GET)
		public ModelAndView userEdit( ModelMap model)
		{
		 System.out.println("found user");
		 User user = userDao.getUserById(SecurityUtils.getUser().getId());
		 model.addAttribute("SpringWeb",user);
		 
		 return new ModelAndView("user/EditProfile",model);
			
		}
	 
	 @RequestMapping(value="/user/EditProfile.html",method = RequestMethod.POST)
	 public ModelAndView userEdit(@ModelAttribute("SpringWeb")User user, ModelMap model)
	 {
		
		 
		
///		user.setUsername(user.getUsername().toString())
		 
		 user.setId(SecurityUtils.getUser().getId()); 
		 user.setId(SecurityUtils.getUser().getId()); 
			
		 System.out.println("User name:"+user.getUsername());
		 System.out.println("User id:"+user.getId());
		 HashSet s=new HashSet();
			s.add("ROLE_USER");
			 
			 user.setRoles(s); 
		 
		 userDao.update(user);
		 model.addAttribute("SpringWeb", userDao.getUserById(user.getId()));
		 return new ModelAndView("user/userProfile",model);
	 }
}