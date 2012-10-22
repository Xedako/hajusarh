/**
 * @author Maksim Pristsepov
 */

package hajusarh.controller.customer;

import hajusarh.data.Customer;
import hajusarh.validator.Validation;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AddCustomerController extends CustomerBaseController {

	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public String showForm(Model model) {
		model.addAttribute("customer", new Customer());
		return "addCustomer";
	}

	@RequestMapping(value = "/addCustomer.json", method = RequestMethod.POST)
	public @ResponseBody
	String processForm(@Valid Customer customer, BindingResult result) {
		Validation validation = new Validation(result);
		if (!validation.hasErrors()) {
			customerService.addCustomer(customer);
		}
		return validation.getResponse();
	}

}
