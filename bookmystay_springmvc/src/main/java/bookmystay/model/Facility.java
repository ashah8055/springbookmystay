package bookmystay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Embeddable
@Table(name = "room_facility")
public class Facility implements Serializable{

    private boolean microwave;
    private boolean flatTV;
    @Column(name = "facility_minifridge")
    private boolean miniFridge;
    private boolean balcony;
   
    public Facility()
    {

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