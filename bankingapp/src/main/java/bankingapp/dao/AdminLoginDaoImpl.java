package bankingapp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminLoginDaoImpl implements AdminLoginDao {
	@Autowired

	private JdbcTemplate jdbcTemplate;

	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public boolean validateAdmin(String username, String password) {
		int query = jdbcTemplate.queryForObject("select count(*)"
				+ " from admin where username=?"
				+ " and password=?",
				Integer.class, username, password);
		if (query == 1)
			return true;
		else
			return false;
	}

}
