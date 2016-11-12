package bookmystay.model;

import javax.persistence.*;



import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;




import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


@Entity
@Table(name = "users")
public class User implements Serializable, org.springframework.security.core.userdetails.UserDetails {

	
	public static final String ROLE_ADMIN = "ROLE_ADMIN";

	public static final String ROLE_USER = "USER";

    @Id
    @GeneratedValue
    @Column(name = "user_id")
    private Integer id;
    
    
   	@Column(name = "last_name")
    private String userLname;
    @Column(name = "user_email")
    private String userEmail;
    
    
    @Column(name = "security_question")
    private Integer securityQuestion;
    @Column(name = "security_answer")
    private String securityAnswer;
    
    
    @OneToMany(mappedBy = "user")
    private List<Reservation> reservationList;
   
    @Embedded
    private UserAddress address;
    @OneToMany(cascade=CascadeType.ALL,mappedBy = "user")
    private List<SecurityCard> securityCard;
    
// Security Parametes    
    
    @Column(nullable = false, unique = true)
    private String username;

    @Column
    private String password;

    @ElementCollection
    @CollectionTable(name = "authorities",
        joinColumns = @JoinColumn(name = "user_id"))
    @Column(name = "role")
    private Set<String> roles;

    @Column(nullable = false)
    private boolean enabled;

    public User()
    {
        roles = new HashSet<String>();
        enabled = true;
    }
    
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities()
    {
        Set<GrantedAuthority> authorities = new HashSet<GrantedAuthority>();
        for( String role : roles )
            authorities.add( new SimpleGrantedAuthority( role ) );
        return authorities;
    }

    @Override
    public boolean isAccountNonExpired()
    {
        return true;
    }

    @Override
    public boolean isAccountNonLocked()
    {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired()
    {
        return true;
    }

    
    public Set<String> getRoles()
    {
        return roles;
    }

    public void setRoles( Set<String> roles )
    {
        this.roles = roles;
    }

    public boolean isEnabled()
    {
        return enabled;
    }

    public void setEnabled( boolean enabled )
    {
        this.enabled = enabled;
    }
   
    public String getUsername()
    {
        return username;
    }

    public void setUsername( String username )
    {
        this.username = username;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword( String password )
    {
        this.password = password;
    }
	
    
    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserLname() {
		return userLname;
	}

	public void setUserLname(String userLname) {
		this.userLname = userLname;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Integer getSecurityQuestion() {
		return securityQuestion;
	}

	public void setSecurityQuestion(Integer securityQuestion) {
		this.securityQuestion = securityQuestion;
	}

	public String getSecurityAnswer() {
		return securityAnswer;
	}

	public void setSecurityAnswer(String securityAnswer) {
		this.securityAnswer = securityAnswer;
	}

	public List<Reservation> getReservationList() {
		return reservationList;
	}

	public void setReservationList(List<Reservation> reservationList) {
		this.reservationList = reservationList;
	}

	public UserAddress getAddress() {
		return address;
	}

	public void setAddress(UserAddress address) {
		this.address = address;
	}

	public List<SecurityCard> getSecurityCard() {
		return securityCard;
	}

	public void setSecurityCard(List<SecurityCard> securityCard) {
		this.securityCard = securityCard;
	}


	
}