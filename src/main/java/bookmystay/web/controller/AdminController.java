package bookmystay.web.controller;

import bookmystay.model.Reservation;
import bookmystay.model.Room;
import bookmystay.model.User;
import bookmystay.model.dao.ReservationDao;
import bookmystay.model.dao.RoomDao;
import bookmystay.model.dao.UserDao;
import bookmystay.security.SecurityUtils;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class AdminController
{
	
	@Autowired
	private ReservationDao resvDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
    RoomDao roomManager;
   
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
    @RequestMapping("/home.html")
    public String adminHome(HttpSession session){
    
    	
	   	Set<String> currentUserRoles=(SecurityUtils.getUser().getRoles());
    	String role = null;
    	for(String currentUserRole:currentUserRoles){
    		role=currentUserRole;
    		break;
    	}
    	
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
                                ModelMap model) {
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
    	
        
        System.out.println("my"+room.getRoomNo());
        System.out.println("id=="+room.getId());
    	
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
}
