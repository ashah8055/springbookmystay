package bookmystay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "reservation_details")
public class Reservation implements Serializable{

    @Id
    @GeneratedValue
    private Integer id;
    @Column(name = "checkin_date")
    private Date checkin;
    @Column(name = "checkout_date")
    private Date checkout;

    @Column(name = "reservation_status")
    private boolean status; //0: cancelled 1: valid

    @Column(name = "reservation_code")
    private String reservation_code;
    
    @ManyToMany
    @JoinTable(
    		name="reservation_room",
    				joinColumns=@JoinColumn(name="reservation_id"),
    						inverseJoinColumns=@JoinColumn(name="room_id")
    )
    private List<Room> room;

	@ManyToOne
    private UserDetails user;

    @OneToOne
    private Payment payment;

    public Reservation() {
    }

    public List<Room> getRoom() {
        return room;
    }

    public void setRoom(List<Room> room) {
        this.room = room;
    }

    public UserDetails getUser() {
        return user;
    }

    public void setUser(UserDetails user) {
        this.user = user;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCheckin() {
        return checkin;
    }

    public void setCheckin(Date checkin) {
        this.checkin = checkin;
    }

    public Date getCheckout() {
        return checkout;
    }

    public void setCheckout(Date checkout) {
        this.checkout = checkout;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }


    public String getReservation_code() {
		return reservation_code;
	}

	public void setReservation_code(String reservation_code) {
		this.reservation_code = reservation_code;
	}

}