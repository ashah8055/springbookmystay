package bookmystay.model.dao;

import java.util.List;

import bookmystay.model.Feedback;

public interface FeedbackDao {

	Feedback SaveUser(Feedback feedback);
	 List<Feedback> getFeedback();
	 Feedback getfeedback( Integer id );
Feedback update(Feedback feedback);
Feedback getfeedbackById(int id);
}
