package bookmystay.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "security_card")
public class SecurityCard implements Serializable{

    @Id
    @GeneratedValue
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

    @OneToOne
    private Payment payment;

    @ManyToOne
    private UserDetails user;

    public SecurityCard() {

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
}