package bookmystay.web.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bookmystay.model.SecurityCard;
import bookmystay.model.UserAddress;
import bookmystay.model.UserDetails;
import bookmystay.model.dao.SecurityCardDao;
import bookmystay.model.dao.UserDetailsDao;
import antlr.collections.List;

@Controller
public class UserController {
	
	@Autowired
	UserDetailsDao userDao;
	
	/*@Autowired
	SecurityCardDao securityDao;*/

	
	@RequestMapping("/user/HomeView.html")
	public String home(HttpSession session)
	{
		session.invalidate();
		return "user/HomeView";
	}
	
	@RequestMapping(value="/user/SignupView.html", method = RequestMethod.GET)
	public String Signupview(HttpServletRequest request,@ModelAttribute UserDetails user,BindingResult result)
	{
		return "user/SignupView";
	}
	
	@RequestMapping(value="/user/SignupView.html", method = RequestMethod.POST)
	public String Signup(HttpServletRequest request,@ModelAttribute UserDetails user,BindingResult result,@RequestParam String securityQuestion,@RequestParam String State,@RequestParam String card_type,@RequestParam String card_expdate)
	{
		
		user.setUserFname(request.getParameter("userFname"));
		user.setUserLname(request.getParameter("userLname"));
		user.setUserEmail(request.getParameter("userEmail"));
		user.setUserPassword(request.getParameter("userPassword"));
		user.setSecurityQuestion(Integer.parseInt(securityQuestion));
		user.setSecurityAnswer(request.getParameter("ans"));
		
		UserAddress addr = new UserAddress();
		addr.setAddr1(request.getParameter("addr1"));
		addr.setAddr2(request.getParameter("addr2"));
		addr.setCity(request.getParameter("city"));
		addr.setCountry("USA");
		addr.setState(State);
		addr.setZipcode(request.getParameter("zip"));
		addr.setPhone("123");
		
		user.setAddress(addr);
		
		SecurityCard card = new SecurityCard();
		card.setName(request.getParameter("userFname"));
		card.setCardType(card_type);
		card.setCard_expdate(card_expdate);
		card.setAddr(request.getParameter("addr1"));
		card.setAddr2(request.getParameter("addr2"));
		card.setCity(request.getParameter("city"));
		card.setState(State);
		card.setZipcode(request.getParameter("zip"));
		card.setUser(user);
		
		
		
		ArrayList<SecurityCard> c = new ArrayList<>();
		c.add(card);
		
		user.setSecurityCard(c);
		user.setAdmin(false);
		
		userDao.SaveUser(user);
		//securityDao.SaveCard(card);
		
		return "redirect:/user/HomeView.html";
	}
	

	@RequestMapping(value="/user/LoginView.html", method = RequestMethod.GET)
	public String login(HttpServletRequest request,@ModelAttribute UserDetails user,HttpSession session)
	{
		session.invalidate();
		return "user/LoginView";
		
	}
	
	@RequestMapping(value="/user/LoginView.html", method = RequestMethod.POST)
	public String loginValid(HttpServletRequest request,@ModelAttribute UserDetails user,HttpSession session,ModelMap model)
	{
		
		String email = request.getParameter("txtlogin");
		String pw = request.getParameter("txtpassword");
		UserDetails u = userDao.isValid(email, pw);
		if(u!=null){
			session.setAttribute("uid", u.getId());
			//model.put("user", u);
			if(u.getAdmin()==true){
				
			}
			else{
				return "redirect:/user/ReservationView.html";
			}
			return null;
		}
		else
		return "user/LoginView";
		
	}
	

	@RequestMapping(value="/user/ReservationView.html", method = RequestMethod.GET)
	public String Reserve(HttpServletRequest request,@ModelAttribute UserDetails user,HttpSession session,ModelMap model)
	{
		String id =session.getAttribute("uid").toString();
		UserDetails u = userDao.getUser(Integer.parseInt(id));
		model.put("user",u);
		return "user/ReservationView";
		
	}
	
	@RequestMapping(value="/user/EditProfile.html", method = RequestMethod.GET)
	public String edit(HttpServletRequest request,@ModelAttribute UserDetails user,HttpSession session,ModelMap model)
	{
		String id =session.getAttribute("uid").toString();
		UserDetails u = userDao.getUser(Integer.parseInt(id));
		model.put("user",u);
		return "user/EditProfile";
	}
	
	@RequestMapping(value="/user/EditProfile.html", method = RequestMethod.POST)
	public String edit1(HttpServletRequest request,@ModelAttribute UserDetails user,HttpSession session,ModelMap model,@RequestParam String securityQuestion,@RequestParam String State,@RequestParam String country)
	{
		String id =session.getAttribute("uid").toString();
		UserDetails u = userDao.getUser(Integer.parseInt(id));
		u.setUserFname(request.getParameter("userFname"));
		u.setUserLname(request.getParameter("userLname"));
		u.setUserEmail(request.getParameter("userEmail"));
		u.setUserPassword(request.getParameter("userPassword"));
		u.setSecurityQuestion(Integer.parseInt(securityQuestion));
		u.setSecurityAnswer(request.getParameter("ans"));
		
		UserAddress addr = new UserAddress();
		addr.setAddr1(request.getParameter("addr1"));
		addr.setAddr2(request.getParameter("addr2"));
		addr.setCity(request.getParameter("city"));
		addr.setCountry(country);
		addr.setState(State);
		addr.setZipcode(request.getParameter("zip"));
		addr.setPhone("123");
		
		u.setAddress(addr);
		
		userDao.SaveUser(u);
		return "redirect:/user/ReservationView.html";
	}
	
}
