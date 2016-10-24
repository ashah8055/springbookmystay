package bookmystay.model.dao.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import bookmystay.model.UserDetails;
import bookmystay.model.dao.UserDetailsDao;

@Repository
public class UserDetailsDaoImpl implements UserDetailsDao {
	
	@PersistenceContext
	private EntityManager entityManager;

	@Transactional
	@Override
	public UserDetails SaveUser(UserDetails user) {
		return entityManager.merge(user);
	}

	@Override
	public UserDetails isValid(String email, String pw) {
		
		UserDetails u = null;
		
		try{
			u = entityManager.createQuery("from UserDetails where LOWER(userEmail) = LOWER(:email) and userPassword= :pw",UserDetails.class)
					.setParameter("email", email)
					.setParameter("pw",pw)
					.getSingleResult();
		}
		catch(Exception e){
			
		}
		return u;
	}

	@Override
	public UserDetails getUser(Integer id) {
		return entityManager.find(UserDetails.class, id);
	}

}
