package bookmystay.model.dao.jpa;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import bookmystay.model.Reservation;
import bookmystay.model.User;
import bookmystay.model.dao.UserDao;


@Repository
public class UserDaoImplementation implements UserDao {

	
	@PersistenceContext
	EntityManager manager;

	@Override
	public User getUserByUsername( String username )
	{
	    String query = "from User user left join fetch user.roles "
	        + "where lower(username) = :username";
	
	    List<User> users = manager.createQuery( query, User.class )
	        .setParameter( "username", username.toLowerCase() )
	        .getResultList();
	    return users.size() == 0 ? null : users.get( 0 );
	}
	
	@Transactional
	@Override
	public User SaveUser(User user) {
		return manager.merge(user);
	}
	
	
	@Override
	public User getUser(Integer id) {
		return manager.find(User.class, id);
	}
	@Override
	public List<User> allUser() {
		
		return manager.createQuery("from User", User.class)
				.getResultList(); 
	}
	
	@Transactional
	public void deleteUser(User user) {
		manager.remove(user);
		
	}
	
}
