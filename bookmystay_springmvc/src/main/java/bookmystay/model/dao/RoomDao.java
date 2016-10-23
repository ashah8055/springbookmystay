package bookmystay.model.dao;

import java.util.List;

import bookmystay.model.Room;

public interface RoomDao {
	
	List<Room> getRooms();
	List<Room> getRooms(Integer guestNo);
	List<Room> getRooms(String type);
	Room getRoom(Integer id);
	
	

}

