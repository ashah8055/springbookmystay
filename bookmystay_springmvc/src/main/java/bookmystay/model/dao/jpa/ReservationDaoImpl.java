package bookmystay.model.dao.jpa;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import bookmystay.model.Reservation;
import bookmystay.model.Room;
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

	@Override
	public List<Reservation> getReservations(Date start, Date end) {
		return entityManager.createQuery("from Reservation where (checkin <= :start and checkout > :start) or (checkin >= :start and checkout <= :end) or (checkin < :end and checkout > :end)", Reservation.class)
				.setParameter("start", start)
				.setParameter("end",end)
				.getResultList();
	}
	//where checkin >= :start or checkout < :end

}
