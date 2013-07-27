package org.cognoscenti.gae.web;

import org.cognoscenti.gae.domain.Person;
import org.cognoscenti.gae.service.PersonService;
import org.cognoscenti.gae.validator.PersonValidator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PersonController {
	private PersonService personService;
	private PersonValidator personValidator;
	
	public PersonController() { }
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {		
		model.addAttribute("persons", personService.listPersons());
		
		return "home";
	}
	
	@RequestMapping(value = "/record/new", method = RequestMethod.GET)
	public String showPersonForm(Model model) {		
		model.addAttribute("person", new Person());
		
		return "addPerson";
	}
	
	@RequestMapping(value = "/record/new", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("person") Person person, BindingResult result, Model model) {
		personValidator.validate(person, result);
		
		if(result.hasErrors()) {
			model.addAttribute("person", person);
			return "addPerson";
		}
		
		personService.add(person);
		
		return "redirect:/spring-jpa-gae/home";
	}

	/**
	 * @return the personService
	 */
	public PersonService getPersonService() {
		return personService;
	}

	/**
	 * @param personService the personService to set
	 */
	public void setPersonService(PersonService personService) {
		this.personService = personService;
	}

	/**
	 * @return the personValidator
	 */
	public PersonValidator getPersonValidator() {
		return personValidator;
	}

	/**
	 * @param personValidator the personValidator to set
	 */
	public void setPersonValidator(PersonValidator personValidator) {
		this.personValidator = personValidator;
	}
}