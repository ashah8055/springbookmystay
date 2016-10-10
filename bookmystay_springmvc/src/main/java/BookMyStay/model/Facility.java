package BookMyStay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "room_facility")
public class Facility implements Serializable{

    @Id
    @GeneratedValue
    @Column(name = "facility_id")
    private Integer id;
    private boolean microwave;
    private boolean flatTV;
    @Column(name = "facility_minifridge")
    private boolean miniFridge;
    private boolean balcony;
    @OneToMany(mappedBy="facility")
    List<Room> roomList;

    public Facility()
    {

    }

    public List<Room> getRoomList() {
        return roomList;
    }

    public void setRoomList(List<Room> roomList) {
        this.roomList = roomList;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public boolean isMicrowave() {
        return microwave;
    }

    public void setMicrowave(boolean microwave) {
        this.microwave = microwave;
    }

    public boolean isFlatTV() {
        return flatTV;
    }

    public void setFlatTV(boolean flatTV) {
        this.flatTV = flatTV;
    }

    public boolean isMiniFridge() {
        return miniFridge;
    }

    public void setMiniFridge(boolean miniFridge) {
        this.miniFridge = miniFridge;
    }

    public boolean isBalcony() {
        return balcony;
    }

    public void setBalcony(boolean balcony) {
        this.balcony = balcony;
    }
}