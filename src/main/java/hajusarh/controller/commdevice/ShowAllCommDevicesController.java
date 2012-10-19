/**
 * @author Maksim Pristsepov
 */

package hajusarh.controller.commdevice;

import hajusarh.data.CommDevice;
import hajusarh.service.CommDeviceService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShowAllCommDevicesController {
	@Autowired
	private CommDeviceService commDeviceService;

	@RequestMapping("/showAllCommDevices")
	public ModelAndView showAllCommDevices() {
		System.out
				.println("\n\n\nShowAllCommDevicesController.showAllCommDevices()");
		List<CommDevice> commDevices = commDeviceService.findAllCommDevices();
		System.out.println(commDevices.get(0).getCommDeviceType());
		return new ModelAndView("showAllCommDevices", "commDevices",
				commDevices);
	}

}
