package hajusarh.service;

import hajusarh.data.Customer;

import java.util.List;

public interface CustomerService extends BaseDao {

	List<Customer> findAllCustomers();

	Customer getCustomer(Long customerId);

	void updateCustomer(Customer customer);

	void removeCustomer(Long customerId);

	void addCustomer(Customer customer);
}
