/**
 * @author Maksim Pristsepov
 */

package hajusarh.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DeleteCustomerController extends CustomerBaseController {

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
