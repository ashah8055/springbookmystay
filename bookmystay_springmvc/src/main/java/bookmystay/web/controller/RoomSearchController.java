package bookmystay.web.controller;

import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import bookmystay.model.Reservation;
import bookmystay.model.Room;
import bookmystay.model.dao.ReservationDao;
import bookmystay.model.dao.RoomDao;

@Controller
@SessionAttributes("reservation")
public class RoomSearchController {
	
	@Autowired
	private RoomDao roomDao;
	
	@Autowired
	private ReservationDao resvDao;
	
	@RequestMapping(value="/list.html")
	public String rooms( ModelMap models ){
		models.put( "rooms", roomDao.getRooms() );
		return "list";
	}
	
	@RequestMapping(value="/view.html")
	public String view( @RequestParam Integer id, ModelMap models ){
		models.put( "room", roomDao.getRoom(id) );
		return "view";
	}
	
	@RequestMapping(value="/search.html", method = RequestMethod.GET)
	public String search(ModelMap models){
		models.put("room", new Room());
		return "search";
	}
	
	@RequestMapping(value="/user/search.html", method = RequestMethod.POST)
	public String search(@RequestParam String adultNo, @RequestParam String childNo, @RequestParam String checkin, @RequestParam String checkout, ModelMap models ){
		
		int guestNo = Integer.parseInt(adultNo) + Integer.parseInt(childNo);
		
		List<Reservation> reservations = new ArrayList<>();
		List<Room> roomlist = roomDao.getRooms(guestNo);
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		try{
			Date date_in = df.parse(checkin);
			Date date_out = df.parse(checkout);
			reservations = resvDao.getReservations(date_in, date_out);
			if(reservations != null){
				for(int i=0;i<reservations.size();i++){
					List<Room> rooms = reservations.get(i).getRoom();
					
					if(rooms != null ){
					    for(int j=0;j<rooms.size();j++){
					    	if(roomlist != null){
					    		if(roomlist.contains(rooms.get(j))){
							    	roomlist.remove(rooms.get(j));
							    }
					    	}
					    }
					}
					
				}
			}
			
			
		}catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		models.put( "rooms", roomlist );
		models.put( "checkin", checkin );
		models.put( "checkout", checkout );
        return "list";
	}
	
	@RequestMapping(value="/reserve.html", method = RequestMethod.POST)
	public String reserve(@RequestParam String checkin, @RequestParam String checkout, @RequestParam Integer roomid, ModelMap models ){
		
		Room room = roomDao.getRoom(roomid);
		Reservation reservation = new Reservation();

		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		try{
			Date date_in = df.parse(checkin);
			Date date_out = df.parse(checkout);
			reservation.setCheckin(date_in);
			reservation.setCheckout(date_out);
			
		}catch (ParseException e) {
			e.printStackTrace();
		}
		ArrayList<Room> roomlist = new ArrayList<>();
		
		roomlist.add(room);
		reservation.setRoom(roomlist);
		reservation.setStatus(true);
		
		String code = UUID.randomUUID().toString();

		reservation.setReservation_code(code);
		reservation = resvDao.saveReservation(reservation);
		return "reservation";
	}
}
