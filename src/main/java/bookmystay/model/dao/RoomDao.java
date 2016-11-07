package bookmystay.model.dao;

import java.util.Date;
import java.util.List;

import bookmystay.model.Room;


public interface RoomDao {
	
	List<Room> getRooms();
	List<Room> getRooms(Integer guestNo);
	List<Room> getRooms(String type);
	Room getRoom(Integer id);
	void addRoom(Room room);
    List<Room> getAllRoom();
    Room update(Room room) ;
    Room getRoomById(int id) ;
    List<Room> getRoomsBetweenDates(Date start, Date end,int capacity);
}


