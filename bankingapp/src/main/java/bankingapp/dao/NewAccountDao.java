package bankingapp.dao;

import bankingapp.entity.Customer;

public interface NewAccountDao {
	int createAccount(Customer account);
}
