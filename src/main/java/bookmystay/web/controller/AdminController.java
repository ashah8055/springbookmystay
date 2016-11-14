package bookmystay.web.controller;

import bookmystay.model.Reservation;
import bookmystay.model.Room;
import bookmystay.model.SecurityCard;
import bookmystay.model.User;
import bookmystay.model.dao.ReservationDao;
import bookmystay.model.dao.RoomDao;
import bookmystay.model.dao.SecurityCardDao;
import bookmystay.model.dao.UserDao;
import bookmystay.security.SecurityUtils;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


@Controller
@SessionAttributes("room")
public class AdminController
{
	
	@Autowired
	private ReservationDao resvDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
    RoomDao roomManager;
//	@Autowired
//	SecurityCardDao securityDao;
	// first page
	@RequestMapping("/index.html")
	    public String firstPage(){
	    return "web/index";
	}
	  
	// login page
    @RequestMapping(value="/login.html", method=RequestMethod.GET)
	public String login() {
		return "login";
	} 
    
    
    // first page after login
    @RequestMapping(value = {"/home.html","admin/AdminHomeView.html"})
    public String adminHome(HttpSession session){	
	   	Set<String> currentUserRoles=(SecurityUtils.getUser().getRoles());
    	String role = null;
    	for(String currentUserRole:currentUserRoles){
    		role=currentUserRole;
    		break;
    	}
    	
    	User user = SecurityUtils.getUser();
    	
    	if(role.equals("ROLE_ADMIN")){
    		return "redirect: admin/AdminHomeView.html";

    	}
    	
    	if(session.getAttribute("rooms")!=null)
    	{
    		return "redirect: user/cart.html";
    	}
    	
   	    else{
    		return "redirect: user/HomeView.html";

    	}
    
    }

    
   
    @RequestMapping("/firstpage.html")
    public String searchPage(){
    return "user/SearchBeforeLogin";
    }
    
    
    @RequestMapping("/about.html")
    public String aboutPage(){
    return "web/about";
    }
    
    @RequestMapping("/gallery.html")
    public String galleryPage(){
    return "web/gallery";
    }
    
    @RequestMapping("/contact.html")
    public String contactPage(){
    return "web/contact";
    }
    
   
    
       

    
    //  Room Add  by Admin
    
    @RequestMapping(value="/admin/addRoom.html",method=RequestMethod.GET)
    public ModelAndView room() {
        return new ModelAndView("/Admin/RoomAdd", "command",new Room());
    }
   
   
    @RequestMapping(value="/admin/addRoom1.html",method=RequestMethod.POST)
    public ModelAndView addRoom(@ModelAttribute("SpringWeb")Room room,
                                ModelMap model, BindingResult result) {
        roomManager.addRoom(room);
        model.addAttribute("SpringWeb", roomManager.getAllRoom());
        return new ModelAndView("/Admin/AdminViewRoom",model);
    }

    
    
    //  Room Edit by Admin
    
    @RequestMapping(value="/admin/update.html",method=RequestMethod.GET)
    public ModelAndView roomUpdate(@RequestParam int id,ModelMap model) {
    	System.out.println("inside");
        Room room=roomManager.getRoomById(id);
     //   System.out.println("my"+room.getRoomNo());
        
        model.addAttribute("SpringWeb", room);
        return new ModelAndView("/Admin/AdminEditRoom",model);
    }

    
    @RequestMapping(value="/admin/updateRoom.html",method=RequestMethod.POST)
    public ModelAndView updateRoom(@ModelAttribute("SpringWeb")Room room,
                                   ModelMap model) {
        
        roomManager.update(room);
        model.addAttribute("SpringWeb", roomManager.getAllRoom());
        return new ModelAndView("/Admin/AdminViewRoom",model);
    }

    //  View All Room	
    @RequestMapping(value="/admin/viewRoom.html",method=RequestMethod.GET)
    public ModelAndView viewRoom(@ModelAttribute("SpringWeb")Room room,
                                ModelMap model) {
       
        model.addAttribute("SpringWeb", roomManager.getAllRoom());
        return new ModelAndView("/Admin/AdminViewRoom",model);
    }
    
    
    
    
    // All Reservation functionality
    
    
    
    // View All Reservations
    @RequestMapping(value="/admin/allReservation.html", method = RequestMethod.GET)
	public String resv_search_by_user(ModelMap models){
    	
    	System.out.println("reached");
    	List<Reservation> reservations = new ArrayList<>();	
    	reservations = resvDao.allReservation();
    	
    	models.put("reservations", reservations);
		
		return "Admin/AllReservationView";
	
    
    
    }
    
    
    
    // Cancel Reservation by Admin
    
    @RequestMapping(value="/admin/cancelReservation.html")
	public String resv_confirm( @RequestParam int id,ModelMap model){
		
	 
	 resvDao.cancelReservation(resvDao.getReservationById(id));
	 
	 List<Reservation> reservations = new ArrayList<>();	
 	reservations = resvDao.allReservation();
	 
 	model.put("reservations", reservations);
	
	return "Admin/AllReservationView";

	}
 
    
    // Delete User by Admin
    
    
    @RequestMapping(value="/admin/viewUsers.html",method=RequestMethod.GET)
    public ModelAndView viewRoom(@ModelAttribute("SpringWeb")User user,
                                ModelMap model) {
       
    	
        model.addAttribute("SpringWeb",userDao.allUser() );
        return new ModelAndView("/Admin/AdminManageUser",model);
    }
    	
    
    @RequestMapping(value="/admin/delete.html")
  	public ModelAndView deleteUser( @RequestParam int id,ModelMap model){
  		
    System.out.println("myyyy");	
  	 userDao.deleteUser(userDao.getUser(id));
  	 
  List<User> u=	userDao.allUser();
  	 			for(User d:u)
  	 			{
  	 				System.out.println("myyyy"+d.getUsername());
  	 			}
  	 
   	model.addAttribute("SpringWeb",userDao.allUser() );
    return new ModelAndView("/Admin/AdminManageUser",model);

  	}
    @RequestMapping(value="/admin/showUser.html")
  	public ModelAndView viewUser( @RequestParam int id,ModelMap model){
  	 
     User u=	userDao.getUser(id);
  	 			
   	model.addAttribute("SpringWeb",u );
    return new ModelAndView("/Admin/showUser",model);

  	}
    
    @RequestMapping(value="/admin/showuser.html")
	public String viewuser( @RequestParam int id,ModelMap model){
    	
    	User user = userDao.getUser(id);
    	model.put("user", user);
    	return "Admin/UserDetailView";

	}
    
    /**@RequestMapping(value="/admin/addReservation.html",method=RequestMethod.GET)
    public String addReservation(){
    	return "admin/addReservation";
    }*/

    
    
    // add walk in users for reservations
    
    
    @RequestMapping(value="/admin/userWalkin.html",method=RequestMethod.GET)
    public ModelAndView userWalkin() {
    	System.out.println("first");
        return new ModelAndView("/Admin/userWalkin", "command",new User());
    }
   
   
    @RequestMapping(value="/admin/userWalkin2.html",method=RequestMethod.POST)
    public ModelAndView addUserWalkin(@ModelAttribute("SpringWeb")User user,
                                ModelMap model) {
    	
    
    	HashSet s=new HashSet();
		s.add("ROLE_USER");
		user.setRoles(s); 
		//List<SecurityCard> list=user.getSecurityCard();
    	/*SecurityCard c=null;
    	for(int i=0;i<list.size();i++)
    	{
    		c=list.get(0);
    		c.setCardNo(c.getCardNo());
    	
    	}
    	list.add(c);
   */ 
		user.setSecurityCard(user.getSecurityCard());
  	  	userDao.SaveUser(user);
    	
    	
    	
    	return null;
    	//return new ModelAndView("/Admin/AdminViewRoom",model);
    }

    
    
    
    
    
    
    
  /*  // Add walk-in users for reservations
    
    @RequestMapping(value="/admin/userWalkin.html", method= RequestMethod.GET)
    public String userReservation()
    {
    	
    	return "/Admin/userWalkin";
    }
    
    @RequestMapping(value="/admin/userWalkin.html", method = RequestMethod.POST)
    public String userReservation(@ModelAttribute("SpringWeb")User user, ModelMap model)
    {
    	System.out.println("user=="+user.getUserEmail());
    	List<SecurityCard> list=user.getSecurityCard();
    	for(SecurityCard c:list)
    	{
    		System.out.println("Credit Crd information:"+c.getZipcode());		
    	}
    
    //	userDao.SaveUser(user);
    	
    	System.out.println("Credit Crd information:"+user.getSecurityCard().size());
    	return null;
    //	return "/Admin/AdminManageUser";
    }
    
*/
}
