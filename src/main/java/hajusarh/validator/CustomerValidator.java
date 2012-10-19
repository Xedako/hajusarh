package hajusarh.validator;

import hajusarh.data.Customer;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Contains the validation rules for {@link Customer} object.
 * 
 * @author Maksim Pristsepov
 * 
 */
public class CustomerValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return Customer.class.equals(clazz);
	}

	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "firstName", "required");
		ValidationUtils.rejectIfEmpty(errors, "lastName", "required");
	}
}
