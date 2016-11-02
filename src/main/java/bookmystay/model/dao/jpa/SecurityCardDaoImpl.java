package bookmystay.model.dao.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import bookmystay.model.SecurityCard;
import bookmystay.model.dao.SecurityCardDao;


public class SecurityCardDaoImpl implements SecurityCardDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	@Transactional
	public SecurityCard SaveCard(SecurityCard card) {
		return entityManager.merge(card);
	}

}
