package bookmystay.web.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bookmystay.model.Reservation;
import bookmystay.model.Room;
import bookmystay.model.dao.ReservationDao;
import bookmystay.model.dao.RoomDao;

public class ReservationController {

	@Autowired
	private ReservationDao resvDao;
	
	@Autowired
	private RoomDao roomDao;
	
	@RequestMapping(value="/reservation/search.html", method = RequestMethod.GET)
	public String resv_room_search(@RequestParam String checkin, @RequestParam String checkout, ModelMap models){
		
		List<Reservation> reservations = new ArrayList<>();
		List<Room> roomlist = new ArrayList<>();
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		try{
			Date date_in = df.parse(checkin);
			Date date_out = df.parse(checkout);
			
			reservations = resvDao.getReservations(date_in, date_out);
			/**for(int i=0;i<reservations.size();i++){
				ArrayList<Room> rooms = (ArrayList<Room>) reservations.get(0).getRoom();
				for(int j=0;i<rooms.size();j++){
					roomlist.add(rooms.get(j));
				}
			}*/
			
		}catch (ParseException e) {
			e.printStackTrace();
		}
		
		models.put("reservations", reservations);
		return "reservation/list";
	}

	
}
