/**
 * @author Maksim Pristsepov
 */

package hajusarh.service;

import hajusarh.data.Customer;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author Maksim Pristsepov
 * 
 */
@Repository
public class CustomerServiceImpl extends BaseDaoImpl implements CustomerService {

	@Transactional
	@SuppressWarnings("unchecked")
	public List<Customer> findAllCustomers() {
		return getCurrentSession().createQuery("from Customer").list();
	}

	@Transactional
	public Customer getCustomer(Long customerId) {
		return (Customer) getCurrentSession().get(Customer.class,
				customerId.intValue());
	}

	@Transactional
	public void updateCustomer(Customer customer) {
		System.out.println("\n\n\nCustomerServiceImpl.updateCustomer()");
		System.out.println(customer.getCustomer());
		customer.setUpdated(new Date());
		getCurrentSession().update(customer);
	}

	@Transactional
	public void removeCustomer(Long customerId) {
		Customer customer = getCustomer(customerId);
		if (customer != null)
			getCurrentSession().delete(customer);
	}

	@Transactional
	public void addCustomer(Customer customer) {
		customer.setCreated(new Date());
		customer.setUpdated(new Date());
		getCurrentSession().save(customer);
	}
}
