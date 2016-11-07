package bookmystay.model.dao;

import java.util.List;

import bookmystay.model.Reservation;
import bookmystay.model.User;

public interface UserDao {
	
	User SaveUser(User user);
	User getUser(Integer id);
	List<User> allUser();
	void deleteUser(User user);
	User getUserByUsername( String username );
	User getUserById(int id);
	User update(User user);
	
}
