package bookmystay.model;
import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
@Entity
@Table(name = "room_details")
public class Room implements Serializable{
    @Id
    @GeneratedValue
    @Column(name = "room_id")
    private Integer id;
    
    @Column(name = "room_type")
    private String type;
    
    @Column(name="room_number")
    private String roomNo;
    
    @Column(name="smoke")
    private boolean smoke;
    
    @Column(name = "customer_capacity")
    private Integer capacity; //for how many people 
    
   
    
    @Column(name = "default_rate")
    private float defaultRate;
    
    @Column(name = "room_rate")
    private float rate;
    
    
    @Column(name = "flag")
    private Boolean flag;
    
    public Boolean getFlag() {
		return flag;
	}
	public void setFlag(Boolean flag) {
		this.flag = flag;
	}
	@Column(name = "adult_num")
    private Integer adultnum;
    
    @Column(name = "child_num")
    private Integer childnum;
    @Embedded
	private Facility facility;
	@Transient
    private final int noOfRooms=10;
    @OneToMany(mappedBy="room")
    private List<Reservation> reservation;
    public Room() {
    }
    public int getNoOfRooms() {
        return noOfRooms;
    }
    
    
    public List<Reservation> getReservation() {
		return reservation;
	}
	public void setReservation(List<Reservation> reservation) {
		this.reservation = reservation;
	}
	public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public String getRoomNo() {
        return roomNo;
    }
    public void setRoomNo(String roomNo) {
        this.roomNo = roomNo;
    }
    public boolean isSmoke() {
        return smoke;
    }
    public void setSmoke(boolean smoke) {
        this.smoke = smoke;
    }
    public Integer getCapacity() {
        return capacity;
    }
    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }
    public float getRate() {
        return rate;
    }
    public void setRate(float rate) {
        this.rate = rate;
    }
    
   
	public Integer getAdultnum() {
        return adultnum;
    }
    public void setAdultnum(Integer adultnum) {
        this.adultnum = adultnum;
    }
    public Integer getChildnum() {
        return childnum;
    }
    public void setChildnum(Integer childnum) {
        this.childnum = childnum;
    }
   
	public float getDefaultRate() {
		return defaultRate;
	}
	public void setDefaultRate(float defaultRate) {
		this.defaultRate = defaultRate;
	}
	
    public Facility getFacility() {
		return facility;
	}
	public void setFacility(Facility facility) {
		this.facility = facility;
	}
}
