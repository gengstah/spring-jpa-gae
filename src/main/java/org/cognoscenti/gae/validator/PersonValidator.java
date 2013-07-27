package org.cognoscenti.gae.validator;

import java.util.regex.Pattern;

import org.cognoscenti.gae.domain.Person;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class PersonValidator implements Validator {
	private final static Pattern EMAIL_PATTERN = Pattern.compile(".+@.+\\.[a-z]+");
	
	public PersonValidator() { }
	
	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.isAssignableFrom(Person.class);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "firstName.empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "lastName.empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "comment", "comment.empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email.empty");
		
		Person person = (Person) target;
		
		if(!isEmail(person.getEmail())) errors.rejectValue("email", "email.invalid");
	}
	
	private boolean isEmail(String value) {
		return EMAIL_PATTERN.matcher(value).matches();
	}
}