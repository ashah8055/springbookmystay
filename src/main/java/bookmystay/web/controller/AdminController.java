package bookmystay.web.controller;

import bookmystay.model.Payment;
import bookmystay.model.Reservation;
import bookmystay.model.Room;
import bookmystay.model.SecurityCard;
import bookmystay.model.User;
import bookmystay.model.dao.ReservationDao;
import bookmystay.model.dao.RoomDao;
import bookmystay.model.dao.SecurityCardDao;
import bookmystay.model.dao.UserDao;
import bookmystay.security.SecurityUtils;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.Principal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
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

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Section;
import com.itextpdf.text.pdf.CMYKColor;
import com.itextpdf.text.pdf.PdfCopy;


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
    	
    	models.put("reservation", reservations);
		
		return "Admin/AllReservationView";
	
    
    
    }
    
    
    
    // Cancel Reservation by Admin
    
    @RequestMapping(value="/admin/cancelReservation.html")
	public String resv_confirm( @RequestParam int id,ModelMap model){
		

	 //resvDao.cancelReservation(resvDao.getReservationById(id));
    	Reservation reservation = resvDao.getReservationById(id);
		reservation.setStatus(false);
		reservation = resvDao.saveReservation(reservation);
	 
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
    
    
    @RequestMapping(value="/admin/AdminRoomSearch.html",method=RequestMethod.GET)
    public ModelAndView userWalkin() {
    	System.out.println("first");
        return new ModelAndView("/Admin/AdminRoomSearch", "command",new User());
    }
    
    @RequestMapping(value="/admin/AdminRoomSearch.html",method=RequestMethod.POST)
    public String roomSearch(@RequestParam String checkin, @RequestParam String checkout,ModelMap models,@RequestParam List<Integer> adultNo, @RequestParam List<Integer> childNo,HttpSession session){
    	
    	System.out.println("here");
    	
    	Date checkinDate;
		Date checkoutDate;	
		Reservation R = new Reservation();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	try{
		checkinDate= df.parse(checkin);
		checkoutDate= df.parse(checkout);
	
		Set<Room> my=new HashSet<>();
		
		List<Room> finalrooms=new ArrayList<>();
		for(int i=0;i<adultNo.size();i++)
		{
		int guestNo = adultNo.get(i) +childNo.get(i);
		
		finalrooms=roomManager.getRoomsBetweenDates(checkinDate, checkoutDate,guestNo);
		
		for(int j=0;j<finalrooms.size();j++)
		{		
		Room l=(Room)	 finalrooms.get(j);
		my.add(l);

		}
		}
		session.setAttribute( "rooms", my );
		session.setAttribute( "checkin", checkinDate );
		session.setAttribute( "checkout", checkoutDate );
		models.put("checkin", checkinDate);
		models.put("checkout", checkoutDate);
		// float rate = R.getRoom().getDefaultRate();
	//	 long diffDate = checkoutDate.getTime() - checkinDate.getTime();
//		 long numOfDays = diffDate/(1000*60*60*24);
	//	 float amountPaid = (rate*numOfDays);
         session.setAttribute("reservation", R);
		 
         Payment p = new Payment();
  //       p.setPaymentAmount(amountPaid);
       //  session.setAttribute("Payment", amountPaid);
		 
		
		
		return "Admin/AdminSearchResult";
		
		}catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
    	
    }
   
    
    
    // save walkin user
    
   @RequestMapping(value="/admin/userWalkin2.html",method=RequestMethod.POST)
   public ModelAndView addUserWalkin(@ModelAttribute("SpringWeb")User user,ModelMap model,HttpServletResponse response,HttpSession session) {	
	   
	  Date checkin=(Date) session.getAttribute("checkin");
	  Date checkout=(Date) session.getAttribute("checkout");
	  int roomid1=(int) session.getAttribute("roomid1");
	  Room r= roomManager.getRoomById(roomid1);
	  
	//  System.out.print("mervick  room no==="+r.getRoomNo());
	
	  // User details=userDao.getUser(SecurityUtils.getUser().getId());
	
	  	    HashSet s=new HashSet();
	  	    s.add("ROLE_USER");
		
		user.setRoles(s); 
		userDao.SaveUser(user);
			  User user1=userDao.getUserByUsername(user.getUsername());

	  System.out.print("user id==="+user1.getId());
		Reservation R=new Reservation();
		  R.setCheckin(checkin);
		  R.setCheckout(checkout);
		  R.setRoom(r);
	      R.setUser(user1);
		  R.setStatus(true);
		  float rate = R.getRoom().getDefaultRate();
		  long diffDate = checkout.getTime() - checkin.getTime();
		  long numOfDays = diffDate/(1000*60*60*24);
		  float amountPaid = (rate*numOfDays);	
		  
		  int amount=(int) amountPaid;
		  
		  String code = UUID.randomUUID().toString();

	      R.setReservation_code(code);
			 
	      List<Reservation> list1=new ArrayList<>();
	      list1.add(R);

	  		
		List<SecurityCard> list=user1.getSecurityCard();
    	SecurityCard c=null;
    	for(int i=0;i<list.size();i++)
    	{
    		c=list.get(0);
    		c.setUser(user1);
    		c.setCardNo(c.getCardNo());
    		Payment p=new Payment();
    		p.setPaymentAmount(amountPaid);
    		
    		c.setPayment(p);	
    		
    	}
    	list.add(c);
   
		user1.setSecurityCard(list);
		user1.setReservationList(list1);
			
		  	userDao.SaveUser(user1);
		  	
		  	 Room roo=roomManager.getRoom(R.getRoom().getId());
			  roo.setFlag(false);
			  roomManager.update(roo);

		
			   Document document = new Document();
			   Font redFont = FontFactory.getFont(FontFactory.COURIER, 12, Font.BOLD, new CMYKColor(0, 255, 0, 0));
			   Font blueFont = FontFactory.getFont(FontFactory.HELVETICA, 8, Font.NORMAL, new CMYKColor(255, 0, 0, 0));
				 try {
					
					 Paragraph paragraph = new Paragraph();
					 response.setContentType("APPLICATION/pdf");
					    PdfCopy.getInstance(document, response.getOutputStream());
					    document.open();
					   
					    Paragraph sectionTitle = new Paragraph("RESERVATION CONFIRMATION", redFont);
					    paragraph.add(sectionTitle);
					   // Section section1 = .addSection(sectionTitle);
					    Paragraph sectionContent = new Paragraph("Welcome to Book My Stay. Here is your reservation confirmation receipt", blueFont);
					    paragraph.add(sectionContent);
					    
					    Paragraph header = new Paragraph();
					    Paragraph by = new Paragraph();
					    paragraph.add("\nReservation Code:");
					    paragraph.add(new Chunk(R.getReservation_code()));
					    paragraph.add("\nName:");
					    paragraph.add(new Chunk(user1.getUsername()));
					    paragraph.add(" ");
					    paragraph.add(new Chunk(user1.getUserLname()));
					    paragraph.add("Check-in Date:");
					    paragraph.add(new Chunk(checkin.toString()));
					    paragraph.add("\nCheck-out date:");
					    paragraph.add(new Chunk(checkout.toString()));
					    paragraph.add("\nTotal amount paid:");
					    paragraph.add(new Chunk(String.valueOf(amount)));
					    
					    document.add(header);
					    document.add(by);
					    document.add(paragraph);
			            document.close();
			            
				 
				} catch (DocumentException e) {
					e.printStackTrace();
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			     
	  
			  
			  
			  
			  
		model.put("reservation", resvDao.allReservation());  
    	
    	return new ModelAndView("/Admin/AllReservationView",model);
    }

    
    
// Reservation add by Admin
	 @RequestMapping(value="/admin/addReservation1.html",method=RequestMethod.GET)
	    public String addRoom(@RequestParam Date checkin, @RequestParam Date checkout,
	                                ModelMap model, @RequestParam int roomid,HttpSession session) {
		 
		 session.setAttribute("roomid1", roomid);
		 
	
		 
//		 try
//		 {
//			 
//		 Room r= roomManager.getRoom(roomid);
//		
//		 
//		 
//		 User details=userDao.getUser(SecurityUtils.getUser().getId());
//		 
//		 Reservation R=new Reservation();
//		 R.setCheckin(checkin);
//		 R.setCheckout(checkout);
//		 R.setRoom(r);
//		 R.setUser(details);
//		 R.setStatus(true);
//		
//		 float rate = R.getRoom().getDefaultRate();
//		 long diffDate = checkout.getTime() - checkin.getTime();
//		 long numOfDays = diffDate/(1000*60*60*24);
//		 float amountPaid = (rate*numOfDays);
//         session.setAttribute("reservation", R);
//		 
//         Payment p = new Payment();
//         p.setPaymentAmount(amountPaid);
//         
//		 model.put("Payment", amountPaid);
//	     model.put("SpringWeb",resvDao.getReservationByUser(SecurityUtils.getUser())); 
//	       
//	   
//		 }catch(Exception ae)
//		 {
//			 System.out.print("Exception:=="+ae.getMessage());
//			 ae.printStackTrace();
//		 }   
		  return "/Admin/userWalkin";
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
