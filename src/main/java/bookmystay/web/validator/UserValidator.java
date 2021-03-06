package bookmystay.web.validator;

import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import bookmystay.model.User;

@Component
public class UserValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return User.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User user = (User) target;
		
		if(!StringUtils.hasText(user.getUsername())){
			errors.rejectValue("username", "error.field.empty");
		}
		if(!StringUtils.hasText(user.getPassword())){
			errors.rejectValue("password", "error.field.empty");
		}
				
	}
	

}
