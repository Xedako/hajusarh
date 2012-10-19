package hajusarh.validator;

import hajusarh.data.CommDevice;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class CommDeviceValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return CommDevice.class.equals(clazz);
	}

	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "valueText", "required");
	}
}
