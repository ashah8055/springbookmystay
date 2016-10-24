package bookmystay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name="payment_details")
public class Payment implements Serializable {

    @Id
    @GeneratedValue
    @Column(name = "payment_id")
    private int paymentId;
    @Column(name = "payment_amount")
    private float paymentAmount;
    @Column(name = "payment_date")
    private Date paymentDate;

   @OneToOne
  private SecurityCard securityCard;
    @OneToOne
    private Reservation reservation;

    public int getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
    }

    public float getPaymentAmount() {
        return paymentAmount;
    }

    public void setPaymentAmount(float paymentAmount) {
        this.paymentAmount = paymentAmount;
    }

    public Reservation getReservation() {
        return reservation;
    }

    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public SecurityCard getSecurityCard() {
        return securityCard;
    }

    public void setSecurityCard(SecurityCard securityCard) {
        this.securityCard = securityCard;
    }


}