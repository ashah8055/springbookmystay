package BookMyStay.model;

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
    private boolean smoke;
    @ManyToMany
    private List<Facility> facility;
    @Column(name = "customer_capacity")
    private Integer capacity; //for how many people    
    @Column(name= "date_range") 
    private String[] dateRange; //ex. [20160910,20160915]
    @Column(name = "default_rate")
    private float defaultRate;

	@Column(name = "room_rate")
    private float rate;
    @Column(name = "room_availaibility")
    private Boolean IsAvailable;
    @Column(name = "adult_num")
    private Integer adultnum;
    @Column(name = "child_num")
    private Integer childnum;

    @Transient
    private final int noOfRooms=10;

    @ManyToOne
    private Reservation reservation;

    public Room() {
    }

    public int getNoOfRooms() {
        return noOfRooms;
    }

    public Reservation getReservation() {
        return reservation;
    }

    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }

    public List<Facility> getFacility() {
        return facility;
    }

    public void setFacility(List<Facility> facility) {
        this.facility = facility;
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

    public Boolean getAvailable() {
        return IsAvailable;
    }

    public void setAvailable(Boolean available) {
        IsAvailable = available;
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
    public String[] getDateRange() {
		return dateRange;
	}

	public void setDateRange(String[] dateRange) {
		this.dateRange = dateRange;
	}

	public float getDefaultRate() {
		return defaultRate;
	}

	public void setDefaultRate(float defaultRate) {
		this.defaultRate = defaultRate;
	}

	public Boolean getIsAvailable() {
		return IsAvailable;
	}

	public void setIsAvailable(Boolean isAvailable) {
		IsAvailable = isAvailable;
	}


}