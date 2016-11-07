package bookmystay.model.dao;

import java.util.Date;
import java.util.List;


import bookmystay.model.Reservation;
import bookmystay.model.Room;

import bookmystay.model.User;

public interface ReservationDao {
	
	List<Reservation> getReservations(Date checkin, Date checkout);
	List<Reservation> getReservationByUser(User user);
	Reservation getReservationByCode(String reservation_code);
	Reservation saveReservation(Reservation resv);
    void cancelReservation(Reservation resv);
    public Reservation getReservationById(int id) ;
    List<Reservation> allReservation();
    
    
}
