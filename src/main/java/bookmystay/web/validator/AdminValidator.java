package bookmystay.web.validator;

import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.util.NumberUtils;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import bookmystay.model.Room;
import bookmystay.model.User;

@Component
public class AdminValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return User.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Date date = (Date) target;
		//show error when the date is before today
		if(!date.before(new Date())){
			errors.rejectValue("checkin","error.date.invalid");
		}
		if(!date.before(new Date())){
			errors.rejectValue("checkout","error.date.invalid");
		}	
	}

}
