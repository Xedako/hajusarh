/**
 * @author Maksim Pristsepov
 */

package hajusarh.controller.commdevice;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DeleteCommDeviceController extends CommDeviceBaseController {

	@Override
	protected Validator getValidator() {
		/** Validator is not used in this controller. */
		return null;
	}

	@RequestMapping(value = "/deleteCommDevice", method = RequestMethod.GET)
	String processForm(@RequestParam("commDeviceId") int commDeviceId) {
		commDeviceService.removeCommDevice((long) commDeviceId);
		return "redirect:/showAllCommDevices.html";
	}

}
