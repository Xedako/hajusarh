/**
 * @author Maksim Pristsepov
 */

package hajusarh.controller.customer;

import hajusarh.controller.BaseController;
import hajusarh.data.Customer;
import hajusarh.service.CustomerService;
import hajusarh.validator.CustomerValidator;
import hajusarh.validator.Validation;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EditCustomerController extends BaseController {

	@Autowired
	private CustomerService customerService;

	@Override
	protected Validator getValidator() {
		return new CustomerValidator();
	}

	@RequestMapping(value = "/editCustomer", method = RequestMethod.GET)
	public String showForm(@RequestParam("customerId") int customerId,
			Model model) {
		model.addAttribute("customer",
				customerService.getCustomer((long) customerId));
		return "editCustomer";
	}

	@RequestMapping(value = "/editCustomer.json", method = RequestMethod.POST)
	public @ResponseBody
	String processForm(@Valid Customer customer, BindingResult result) {
		Validation validation = new Validation(result);
		if (!validation.hasErrors()) {
			customerService.updateCustomer(customer);
		}
		return validation.getResponse();
	}

}
