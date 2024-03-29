/**
 * @author Maksim Pristsepov
 */

package hajusarh.controller.commdevice;

import hajusarh.data.CommDevice;
import hajusarh.validator.Validation;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EditCommDeviceController extends CommDeviceBaseController {

	@RequestMapping(value = "/editCommDevice", method = RequestMethod.GET)
	public String showForm(@RequestParam("commDeviceId") int commDeviceId,
			Model model) {
		CommDevice commDevice = commDeviceService
				.getCommDevice((long) commDeviceId);
		model.addAttribute("commDevice", commDevice);
		model.addAttribute("commDeviceTypes",
				commDeviceTypeService.findAllCommDeviceTypes());
		return "editCommDevice";
	}

	@RequestMapping(value = "/editCommDevice.json", method = RequestMethod.POST)
	public @ResponseBody
	String processForm(@Valid CommDevice commDevice, BindingResult result) {
		Validation validation = new Validation(result);
		if (!validation.hasErrors()) {
			commDeviceService.updateCommDevice(commDevice);
		}
		return validation.getResponse();
	}

}
