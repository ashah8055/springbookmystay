package bookmystay.web.controller;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.UUID;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
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
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfCopy;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.parser.PdfTextExtractor;

import bookmystay.model.Payment;
import bookmystay.model.Reservation;
import bookmystay.model.Room;
import bookmystay.model.SecurityCard;
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
	                                ModelMap model, @RequestParam int roomid,HttpSession session) {
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
		
		 float rate = R.getRoom().getDefaultRate();
		 long diffDate = checkout.getTime() - checkin.getTime();
		 long numOfDays = diffDate/(1000*60*60*24);
		 float amountPaid = (rate*numOfDays);
         session.setAttribute("reservation", R);
		 
         Payment p = new Payment();
         p.setPaymentAmount(amountPaid);
         
		 model.put("Payment", amountPaid);
	     model.put("SpringWeb",resvDao.getReservationByUser(SecurityUtils.getUser())); 
	       
	   
		 }catch(Exception ae)
		 {
			 System.out.print("Exception:=="+ae.getMessage());
			 ae.printStackTrace();
		 }   
		  return "/user/ReservationPayment";
	    }
	 
	 @RequestMapping(value="/user/addPayment.html",method=RequestMethod.POST)
	 public ModelAndView addRoom2(HttpSession session,@ModelAttribute("SpringWeb")SecurityCard securityCard,
			 															ModelMap model)
	 {
		 Reservation R=(Reservation) session.getAttribute("reservation");
		 System.out.println("room no=="+R.getRoom().getRoomNo());
		
		 String code = UUID.randomUUID().toString();

         R.setReservation_code(code);
		 
		 resvDao.saveReservation(R);
		 
		 Room roo=roomDao.getRoom(R.getRoom().getId());
		 roo.setFlag(false);
	     roomDao.update(roo);
		
	     model.put("SpringWeb",resvDao.getReservationByUser(SecurityUtils.getUser())); 
		 
	     return new ModelAndView("/user/ReservationConfirmView",model);
		
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
