package BookMyStay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;


@Entity
@Table(name = "user_details")
public class UserDetails implements Serializable{

    @Id
    @GeneratedValue
    @Column(name = "user_id")
    private Integer id;
    @Column(name = "first_name")
    private String userFname;
    @Column(name = "last_name")
    private String userLname;
    @Column(name = "user_email")
    private String userEmail;
    @Column(name="user_password")
    private String userPassword;
    @Column(name = "security_question")
    private Integer securityQuestion;
    @Column(name = "security_answer")
    private String securityAnswer;
    @OneToMany(mappedBy = "user")
    private List<Reservation> reservationList;

    @Embedded
    private UserAddress address;

    public UserDetails() {
    }

    @OneToMany(mappedBy = "user")
    private List<SecurityCard> securityCard;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserFname() {
        return userFname;
    }

    public void setUserFname(String userFname) {
        this.userFname = userFname;
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

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
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

    public UserAddress getAddress() {
        return address;
    }

    public void setAddress(UserAddress address) {
        this.address = address;
    }

    public List<Reservation> getReservationList() {
        return reservationList;
    }

    public void setReservationList(List<Reservation> reservationList) {
        this.reservationList = reservationList;
    }

    public List<SecurityCard> getSecurityCard() {
        return securityCard;
    }

    public void setSecurityCard(List<SecurityCard> securityCard) {
        this.securityCard = securityCard;
    }
}