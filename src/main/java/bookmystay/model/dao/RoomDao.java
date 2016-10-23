package bookmystay.model.dao;


import bookmystay.model.Room;

import java.util.List;

public interface RoomDao {

    void addRoom(Room room);
    List<Room> getAllRoom();

    Room update(Room room) ;

    Room getRoomById(int id) ;


//    public Shop delete(int id) throws ShopNotFound;
//    public List<Shop> findAll();
//    public Shop update(Shop shop) throws ShopNotFound;
//    public Shop findById(int id);

}
