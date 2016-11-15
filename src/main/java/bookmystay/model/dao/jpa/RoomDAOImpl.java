package bookmystay.model.dao.jpa;

import bookmystay.model.Room;
import bookmystay.model.dao.RoomDao;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import java.util.Date;
import java.util.List;


@Repository

public class RoomDAOImpl implements RoomDao {
    @PersistenceContext
    private EntityManager manager;


    @Transactional
    @Override
    @PreAuthorize("hasRole('ADMIN')")
    public void addRoom(Room room) {
       manager.merge(room);
    }

    @Override
    public List<Room> getAllRoom() {
        List<Room> rooms= manager.createQuery("Select a From Room a", Room.class).getResultList();
        return rooms;
    }

    public Room getRoomById(int id) {
        // TODO Auto-generated method stub

        Room room=manager.find(Room.class,id);
        System.out.println("find room"+room.getRoomNo());
        return room;
    }
    
    @Transactional
    @Override
    public Room update(Room room) {

        manager.merge(room);

        return room;

    }

    @Override
	public List<Room> getRooms() {
		return manager.createQuery("from Room order by id", Room.class)
				.getResultList();
	}

	@Override
	public List<Room> getRooms(String type) {
		return manager.createQuery("from Room where type == :roomtype", Room.class)
				.setParameter("roomtype", type)
				.getResultList();
	}

	@Override
	public List<Room> getRooms(Integer guestNo) {
		return manager.createQuery("from Room where capacity >= :guestNo", Room.class)
				.setParameter("guestNo", guestNo)
				.getResultList();
	}

	@Override
	public Room getRoom(Integer id) {
		return manager.find( Room.class, id );
	}
	
	@Override
	public List<Room> getRoomsBetweenDates(Date start, Date end,int capacity) {
		// TODO Auto-generated method stub
		String query="select r from Room as r where  r.capacity>=:capacity and r.id NOT IN (select resv.room.id from Reservation as resv where (resv.checkin >= :start and resv.checkin<:end and resv.status is true) OR (resv.checkout>= :start and resv.checkout<:end and resv.status is true)  )  ";
		
		List<Room> room=manager.createQuery(query).setParameter("capacity", capacity).
				setParameter("end",end).setParameter("start", start).getResultList();
		
		
		System.out.println(room.size());
		return room;
	}





}
