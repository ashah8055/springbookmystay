package bookmystay.web.controller;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import bookmystay.model.Feedback;
import bookmystay.model.dao.FeedbackDao;

@Controller
@SessionAttributes("feedbackreply")
public class FeedbackController {

	@Autowired
 FeedbackDao feedbackdao;
	@Autowired
	private JavaMailSender mailSender;
	
	
	@RequestMapping(value = "contact.html", method = RequestMethod.GET)
	public String addContact(ModelMap models)
	{
		models.put("feedback", new Feedback());
		return "web/contact";
	}
	@RequestMapping(value = "contact.html", method = RequestMethod.POST)
	public String addContact(@ModelAttribute Feedback feedback, ModelMap models)
	{
		/*DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		Calendar cal = Calendar.getInstance();
		*/
		Feedback f = new Feedback();
	//	System.out.println("got the date"+date);
		 String DATE_FORMAT_NOW = "yyyy-MM-dd";
		 Date date = new Date();
		 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT_NOW);
		 String stringDate = sdf.format(date );
		
		f.setDate(stringDate);
		f.setStatus(false);
		//	System.out.println(dateFormat.format(cal.getTime()));
		feedbackdao.SaveUser(feedback);
		return "redirect:contact.html";
	}

	@RequestMapping(value="/admin/feedbacklist.html")
	public String adminfeedbacklist(ModelMap models)
	{
		models.put("feedbacklist", feedbackdao.getFeedback());
		
		return "Admin/AdminFeedback";
	}
	
	@RequestMapping(value = "admin/AdminFeedbackReply.html", method = RequestMethod.GET)
	public String addfeedbackreply(@RequestParam Integer id,ModelMap models)
	{
	
	
		models.put("feedbackreply",feedbackdao.getfeedbackById(id));
		
		
		return "/Admin/AdminFeedbackReply";
	}
	@RequestMapping(value = "admin/AdminFeedbackReply.html", method = RequestMethod.POST)
	public String addfeedbackreply(@ModelAttribute("feedbackreply") Feedback feedbackreply1, ModelMap models,SessionStatus status)
	{
		
		SimpleMailMessage email = new SimpleMailMessage();
	email.setTo(feedbackreply1.getFeedback_email());
	email.setSubject(feedbackreply1.getFeedback_message());
	email.setText(feedbackreply1.getFeedback_reply());

	// sends the e-mail
	mailSender.send(email);
feedbackreply1.setStatus(true);

//feedbackreply1.setDate(date);
		feedbackdao.update(feedbackreply1);

	status.setComplete();
		
		
		
		return "redirect:feedbacklist.html";
	}
	
}
