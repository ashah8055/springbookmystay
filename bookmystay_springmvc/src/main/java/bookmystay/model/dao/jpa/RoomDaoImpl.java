package bookmystay.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import bookmystay.model.Room;
import bookmystay.model.dao.RoomDao;

@Repository
public class RoomDaoImpl implements RoomDao{

	@PersistenceContext
    private EntityManager entityManager;

	@Override
	public Room getRoom(Integer id) {
		return entityManager.find( Room.class, id );
	}

	@Override
	public List<Room> getRooms() {
		return entityManager.createQuery("from Room order by id", Room.class)
				.getResultList();
	}

	@Override
	public List<Room> getRooms(String type) {
		return entityManager.createQuery("from Room where type == :roomtype", Room.class)
				.setParameter("roomtype", type)
				.getResultList();
	}

	@Override
	public List<Room> getRooms(Integer guestNo) {
		return entityManager.createQuery("from Room where capacity >= :guestNo", Room.class)
				.setParameter("guestNo", guestNo)
				.getResultList();
	}
	
}
