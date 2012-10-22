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
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AddCommDeviceController extends CommDeviceBaseController {

	@RequestMapping(value = "/addCommDevice", method = RequestMethod.GET)
	public String showForm(Model model) {
		model.addAttribute("commDevice", new CommDevice());
		model.addAttribute("commDeviceTypes", commDeviceTypes);
		return "addCommDevice";
	}

	@RequestMapping(value = "/addCommDevice.json", method = RequestMethod.POST)
	public @ResponseBody
	String processForm(@Valid CommDevice commDevice, BindingResult result) {
		Validation validation = new Validation(result);
		if (!validation.hasErrors()) {
			commDeviceService.addCommDevice(commDevice);
		}
		return validation.getResponse();
	}

}
