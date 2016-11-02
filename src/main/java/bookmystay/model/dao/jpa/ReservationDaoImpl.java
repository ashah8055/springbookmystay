package bookmystay.model.dao.jpa;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import bookmystay.model.Reservation;
import bookmystay.model.dao.ReservationDao;

@Repository
public class ReservationDaoImpl implements ReservationDao{

	@PersistenceContext
    private EntityManager entityManager;
	
	@Override
	@Transactional
	public Reservation saveReservation(Reservation resv) {
		return entityManager.merge(resv);
	}

	@Transactional
	public void cancelReservation(Reservation resv) {
		
    entityManager.remove(resv);
	}
	
	
	@Override
	public Reservation getReservationById(int id) {
		return entityManager.createQuery("from Reservation where id = :id", Reservation.class)
				.setParameter("id", id)
				.getSingleResult();
	}
	
	
	@Override
	public List<Reservation> getReservations(Date start, Date end) {
		return entityManager.createQuery("from Reservation where (checkin <= :start and checkout > :start) or (checkin >= :start and checkout <= :end) or (checkin < :end and checkout > :end)", Reservation.class)
				.setParameter("start", start)
				.setParameter("end",end)
				.getResultList();
	}
	
	
	@Override
	public Reservation getReservationByCode(String reservation_code) {
		return entityManager.createQuery("from Reservation where reservation_code = :code", Reservation.class)
				.setParameter("code", reservation_code)
				.getSingleResult();
	}

	@Override
	public List<Reservation> allReservation() {
		
		return entityManager.createQuery("from Reservation", Reservation.class)
				.getResultList(); 
	}

	@Override
	public List<Reservation> getReservationByUser(bookmystay.model.User user) {
		return entityManager.createQuery("from Reservation where user = :user order by id desc", Reservation.class)
				.setParameter("user", user)
				.getResultList();
	}
	
	
}
