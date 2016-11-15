package bookmystay.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import bookmystay.model.Feedback;
import bookmystay.model.dao.FeedbackDao;
@Repository
public class FeedbackDaoImpl implements FeedbackDao {
	@PersistenceContext
	EntityManager entitymanager;


	@Transactional
	@Override
	public Feedback SaveUser(Feedback feedback) {
		return entitymanager.merge(feedback);
		}

	@Override
	public List<Feedback> getFeedback() {
		
		String query = "from Feedback where status = false order by id";
		return entitymanager.createQuery(query,Feedback.class).getResultList();
		
	}

	@Override
	public Feedback getfeedback(Integer id) {
		// TODO Auto-generated method stub
		return entitymanager.find(Feedback.class, id);
		//return entityManager.find( Course.class, id );
	}

	@Override
	@Transactional
	public Feedback update(Feedback feedback) {
		entitymanager.merge(feedback);
		return feedback;
	}

	@Override
	public Feedback getfeedbackById(int id) {
		// TODO Auto-generated method stub
	
		Feedback f = null;
		
		try
		{
			f = entitymanager.createQuery("from Feedback where id=:id",Feedback.class)
					.setParameter("id", id)
					.getSingleResult();
		}
		catch(Exception e)
		{
			
		}
		return f;
		
		
	/*	SecurityCard c = null;
		try{
		c= entityManager.createQuery("from SecurityCard where user.id=:id ", SecurityCard.class)
				.setParameter( "id", id )
				.getSingleResult(); 
		}
		catch(Exception e){
			
		}
		return c;
	*/
	}

}
