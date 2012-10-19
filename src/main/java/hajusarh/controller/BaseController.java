/**
 * @author Maksim Pristsepov
 */

package hajusarh.controller;

import hajusarh.util.DateUtil;

import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

@Controller
public abstract class BaseController {

	protected abstract Validator getValidator();

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(
				DateUtil.DATE_FORMAT, true));
		webDataBinder.setValidator(getValidator());
	}
}