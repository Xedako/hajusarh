/**
 * @author Maksim Pristsepov
 */

package hajusarh.controller.commdevice;

import hajusarh.controller.BaseController;
import hajusarh.controller.commdevicetype.CommDeviceTypePropertyEditor;
import hajusarh.data.CommDeviceType;
import hajusarh.service.CommDeviceService;
import hajusarh.service.CommDeviceTypeService;
import hajusarh.validator.CommDeviceValidator;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

@Controller
public class CommDeviceBaseController extends BaseController {

	@Autowired
	protected CommDeviceService commDeviceService;
	@Autowired
	protected CommDeviceTypeService commDeviceTypeService;

	List<CommDeviceType> commDeviceTypes;

	@Override
	protected Validator getValidator() {
		return new CommDeviceValidator();
	}

	@Override
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		super.initBinder(webDataBinder);
		commDeviceTypes = commDeviceTypeService.findAllCommDeviceTypes();
		webDataBinder.registerCustomEditor(CommDeviceType.class,
				new CommDeviceTypePropertyEditor(commDeviceTypes));
	}
}
