package bookmystay.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "security_card")
public class SecurityCard implements Serializable{

    @Id
    private Integer cardNo;
    
    
    @Column(name = "user_nickname")
    private String name;
    @Column(name = "security_code")
    private Integer secode; //security code
    @Column(name = "card_address1")
    private String addr;
    @Column(name = "card_address2")
    private String addr2;
    @Column(name = "card_city")
    private String city;
    @Column(name = "card_state")
    private String state;
    @Column(name = "card_zipcode")
    private String zipcode;
    
    //Added later 
    @Column(name = "card_type")
    private String cardType;
    @Column(name = "card_expdate")
    private String card_expdate;

    @OneToOne
    private Payment payment;

    @ManyToOne
    private User user;

    public SecurityCard() {

    }
    
    

   



	public String getCardType() {
		return cardType;
	}







	public void setCardType(String cardType) {
		this.cardType = cardType;
	}







	public String getCard_expdate() {
		return card_expdate;
	}



	public void setCard_expdate(String card_expdate) {
		this.card_expdate = card_expdate;
	}



	public Integer getCardNo() {
        return cardNo;
    }

    public void setCardNo(Integer cardNo) {
        this.cardNo = cardNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSecode() {
        return secode;
    }

    public void setSecode(Integer secode) {
        this.secode = secode;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getAddr2() {
        return addr2;
    }

    public void setAddr2(String addr2) {
        this.addr2 = addr2;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }
}