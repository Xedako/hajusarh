/**
 * @author Maksim Pristsepov
 */

package hajusarh.controller.commdevice;

import hajusarh.data.CommDevice;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShowAllCommDevicesController extends CommDeviceBaseController {

	@Override
	protected Validator getValidator() {
		/** Validator is not used in this controller. */
		return null;
	}

	@RequestMapping("/showAllCommDevices")
	public ModelAndView showAllCommDevices() {
		List<CommDevice> commDevices = commDeviceService.findAllCommDevices();
		return new ModelAndView("showAllCommDevices", "commDevices",
				commDevices);
	}

}
