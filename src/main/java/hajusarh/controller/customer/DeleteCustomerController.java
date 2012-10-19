/**
 * @author Maksim Pristsepov
 */

package hajusarh.controller.customer;

import hajusarh.controller.BaseController;
import hajusarh.service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DeleteCustomerController extends BaseController {

	@Autowired
	private CustomerService customerService;

	@Override
	protected Validator getValidator() {
		/** Validator is not used in this controller. */
		return null;
	}

	@RequestMapping(value = "/deleteCustomer", method = RequestMethod.GET)
	String processForm(@RequestParam("customerId") int customerId) {
		customerService.removeCustomer((long) customerId);
		return "redirect:/showAllCustomers.html";
	}

}
