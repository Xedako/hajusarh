/**
] * @author Maksim Pristsepov
 */

package hajusarh.controller.customer;

import hajusarh.data.Customer;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShowAllCustomersController extends CustomerBaseController {

	@RequestMapping("/showAllCustomers")
	public ModelAndView showAllCustomers() {
		List<Customer> customers = customerService.findAllCustomers();
		return new ModelAndView("showAllCustomers", "customers", customers);
	}

}
