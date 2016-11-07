package bookmystay.web.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import bookmystay.model.Reservation;
import bookmystay.model.Room;
import bookmystay.model.User;
import bookmystay.model.dao.ReservationDao;
import bookmystay.model.dao.RoomDao;
import bookmystay.model.dao.UserDao;
import bookmystay.security.SecurityUtils;

@Controller
@SessionAttributes("reservation")
public class ReservationController {

	@Autowired
	private ReservationDao resvDao;
	
	@Autowired
	private RoomDao roomDao;
	
	@Autowired
	UserDao userDao;
	
		
	// Reservation add by User
	 @RequestMapping(value="/user/addReservation.html",method=RequestMethod.GET)
	    public String addRoom(@RequestParam Date checkin, @RequestParam Date checkout,
	                                ModelMap model, @RequestParam int roomid) {
		 
		 
		 try
		 {
		 
		 Room r= roomDao.getRoom(roomid);
		 
		 User details=userDao.getUser(SecurityUtils.getUser().getId());
		 
		 Reservation R=new Reservation();
		 
		 R.setCheckin(checkin);
		 R.setCheckout(checkout);
		 R.setRoom(r);
		 R.setUser(details);
		 R.setStatus(true);
		 
		 String code = UUID.randomUUID().toString();

         R.setReservation_code(code);
         
		 resvDao.saveReservation(R);
		 
		 Room roo=roomDao.getRoom(R.getRoom().getId());
		 roo.setFlag(false);
	     roomDao.update(roo);
		 
	     model.put("SpringWeb",resvDao.getReservationByUser(SecurityUtils.getUser())); 
	       
	     return "/user/ReservationConfirmView";
		 }catch(Exception ae)
		 {
			 System.out.print("Exception:=="+ae.getMessage());
			 ae.printStackTrace();
		 }
	   return null;   
	        
	    }

	 // Reservation Confirmation  
	 @RequestMapping(value="/user/ReservationConfirmView.html")
		public String resv_confirm( ModelMap model){
			
			
		  model.put("SpringWeb",resvDao.getReservationByUser(SecurityUtils.getUser())); 
			return "/user/ReservationConfirmView";
		}
	 
	 
	 // Reservation Cancelation
	 @RequestMapping(value="/user/cancel.html")
		public String resv_cancel( @RequestParam int id,ModelMap model){
			
		 
		 //resvDao.cancelReservation(resvDao.getReservationById(id));
		 Reservation reservation = resvDao.getReservationById(id);
		 reservation.setStatus(false);
		 reservation = resvDao.saveReservation(reservation);
		 model.put("SpringWeb",resvDao.getReservationByUser(SecurityUtils.getUser())); 
		 return "/user/ReservationConfirmView";
		}
	 
}
