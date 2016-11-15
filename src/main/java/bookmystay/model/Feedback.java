package bookmystay.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Feedbacks")
public class Feedback implements Serializable{
	
	@Id
	@GeneratedValue
	private Integer id;
	
	private String feedback_name;
	private String feedback_email;
	private String feedback_message;
	private String date;
	private long phone;
	
	
	
	


	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	private boolean status = false;
	
	 @Column(name = "AdminReply")
	private String feedback_reply;
	public String getFeedback_reply() {
		return feedback_reply;
	}

	public void setFeedback_reply(String feedback_reply) {
		this.feedback_reply = feedback_reply;
	}

	public Feedback()
	{
		
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFeedback_name() {
		return feedback_name;
	}
	public void setFeedback_name(String feedback_name) {
		this.feedback_name = feedback_name;
	}
	public String getFeedback_email() {
		return feedback_email;
	}
	public void setFeedback_email(String feedback_email) {
		this.feedback_email = feedback_email;
	}
	public String getFeedback_message() {
		return feedback_message;
	}


	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public void setFeedback_message(String feedback_message) {
		this.feedback_message = feedback_message;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
	

}
