package bankingapp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import bankingapp.entity.Customer;

@Repository
public class NewAccountDaoImpl implements NewAccountDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public int createAccount(Customer account) {

		String accountCreateQuery = "INSERT INTO customer"
				+ "(fullName,address,mobileNo,email,accountType,balance)"
				+ "VALUES (?,?,?,?,?,?)";
		return this.jdbcTemplate.update(accountCreateQuery,
				account.getFullName(),account.getAddress(),
				account.getMobileNo(),account.getEmail(),
				account.getAccountType(),account.getBalance());
	}

}
