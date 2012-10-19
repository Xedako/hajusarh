package hajusarh.validator;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

import com.google.gson.Gson;

public class Validation implements Serializable {
	private static final long serialVersionUID = 1L;
	private static Gson GSON = new Gson();
	private ValidationResponseStatus status;
	private List<ErrorMessage> errorMessages = new ArrayList<ErrorMessage>();

	/**
	 * Constructor.
	 * 
	 * @param result
	 *            incoming binding results from ser with errors.
	 */
	public Validation(BindingResult result) {
		init(result);
	}

	private void init(BindingResult result) {
		if (result.hasErrors()) {
			status = ValidationResponseStatus.FAIL;
			for (FieldError objectError : result.getFieldErrors()) {
				errorMessages.add(new ErrorMessage(objectError.getField(),
						objectError.getField() + "  "
								+ objectError.getDefaultMessage()));
			}
		} else {
			status = ValidationResponseStatus.SUCCESS;
		}
	}

	public ValidationResponseStatus getStatus() {
		return status;
	}

	public void setStatus(ValidationResponseStatus status) {
		this.status = status;
	}

	public List<ErrorMessage> getErrorMessages() {
		return errorMessages;
	}

	public void setErrorMessages(List<ErrorMessage> errorMessages) {
		this.errorMessages = errorMessages;
	}

	/**
	 * @return Json representation of this object.
	 */
	public String getResponse() {
		return GSON.toJson(this);
	}

	public boolean hasErrors() {
		return !errorMessages.isEmpty();
	}
}
