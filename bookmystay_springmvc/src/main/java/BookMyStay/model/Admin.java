package BookMyStay.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "user_admin")
public class Admin extends UserDetails{

    @Column(name = "admin_designation")
   private int userDesignation;
}