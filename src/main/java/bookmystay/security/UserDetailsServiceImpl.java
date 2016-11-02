package bookmystay.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import bookmystay.model.User;
import bookmystay.model.dao.UserDao;


@Service("userService")
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserDao userDao;

    @Override
    public User loadUserByUsername( String username )
        throws UsernameNotFoundException, DataAccessException
    {
        User user = userDao.getUserByUsername( username );
        if( user == null )
            throw new UsernameNotFoundException( username + " is not found." );

        return user;
    }

}
