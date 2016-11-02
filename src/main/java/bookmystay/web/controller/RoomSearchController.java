package bookmystay.web.controller;

import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import bookmystay.model.Reservation;
import bookmystay.model.Room;
import bookmystay.model.User;
import bookmystay.model.dao.ReservationDao;
import bookmystay.model.dao.RoomDao;
import bookmystay.model.dao.UserDao;
import bookmystay.security.SecurityUtils;

@Controller
@SessionAttributes("mySessionAttribute")

public class RoomSearchController {
	
	@Autowired
	private RoomDao roomDao;
	
	@Autowired
	private ReservationDao resvDao;
	
	@Autowired
	UserDao userDao;
	
	 	
	 // Room Search after login
		@RequestMapping(value={"/user/search.html"},method=RequestMethod.POST)
		public String getRoomsForUserByDateSearch(@RequestParam String checkin, @RequestParam String checkout,ModelMap models,@RequestParam List<Integer> adultNo, @RequestParam List<Integer> childNo,HttpSession session)
		{	
				Date checkinDate;
				Date checkoutDate;	
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			try{
				checkinDate= df.parse(checkin);
				checkoutDate= df.parse(checkout);
			
				Set<Room> my=new HashSet<>();
				
				List<Room> finalrooms=new ArrayList<>();
				for(int i=0;i<adultNo.size();i++)
				{
				int guestNo = adultNo.get(i) +childNo.get(i);
				
				finalrooms=roomDao.getRoomsBetweenDates(checkinDate, checkoutDate,guestNo);
				
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
				
				return "user/SearchResult";
				
				}catch (ParseException e) {
					e.printStackTrace();
				}
				return null;
		}
	 
		// room search before login
		@RequestMapping(value={"/search.html"},method=RequestMethod.POST)
		public String getRoomsForUserByDateSearch1(@RequestParam String checkin, @RequestParam String checkout,ModelMap models,@RequestParam List<Integer> adultNo, @RequestParam List<Integer> childNo,HttpSession session){
		
			Date checkinDate;
			Date checkoutDate;	
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		try{
			checkinDate= df.parse(checkin);
			checkoutDate= df.parse(checkout);
		
			Set<Room> my=new HashSet<>();
			
			List<Room> finalrooms=new ArrayList<>();
			for(int i=0;i<adultNo.size();i++)
			{
			int guestNo = adultNo.get(i) +childNo.get(i);
			
			finalrooms=roomDao.getRoomsBetweenDates(checkinDate, checkoutDate,guestNo);
			
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
		
			return "user/BeforeLoginSearchResult";
				
			}catch (ParseException e) {
				e.printStackTrace();
			}
			
		
			return null;
		}

		
		// cart result
		@RequestMapping(value="/user/cart.html", method = RequestMethod.GET)
		public String view(HttpSession session){

			if(session.getAttribute( "rooms" )!=null)
			{			
		Set<Room> rooms=(Set)session.getAttribute( "rooms" );
		System.out.println("room"+rooms.size());
		
			for(Room r:rooms)
			{
				System.out.println("room"+r.getRoomNo());
			}
			
			}
			return "user/CartResult";
		}
}		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	

