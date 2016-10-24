package bookmystay.model.dao;

import bookmystay.model.UserDetails;

public interface UserDetailsDao {
	
	UserDetails SaveUser(UserDetails user);
	
	UserDetails isValid(String email,String pw);

	UserDetails getUser(Integer id);
}
