package bookmystay.model.dao;

import java.util.Date;
import java.util.List;

import bookmystay.model.Reservation;
import bookmystay.model.Room;

public interface ReservationDao {
	
	List<Reservation> getReservations(Date checkin, Date checkout);
	Reservation saveReservation(Reservation resv);
	
}
