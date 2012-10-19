package hajusarh.validator;

/**
 * Validation response status of the some form via ajax.
 * 
 * @author Maksim Pristsepov
 * 
 */
public enum ValidationResponseStatus {
	/** Validation failed. Means, that some entered values are incorrect. */
	FAIL, //
	/** Validation is processed succesfully. */
	SUCCESS;
}
