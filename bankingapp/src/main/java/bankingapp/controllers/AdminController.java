package bankingapp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bankingapp.dao.AdminLoginDao;
import bankingapp.dao.AdminLoginDaoImpl;
import bankingapp.dao.NewAccountDao;
import bankingapp.entity.Customer;

@Controller
public class AdminController {

	/*
	 * Here we are creating the object of the Data access object of Admin login Dao
	 * Point to be noted while doing these the name wch is given to the dao cls here
	 * must be same as that given in spring-servlet.xml wch is the bean of
	 * AdminLoginDao An autowired should be done to establish the connection b/w dao
	 * layer and controller
	 */
	@Autowired
	AdminLoginDaoImpl adminLoginDao;

	@RequestMapping("/")
	public String home() {
		return "homePage";
	}

	@RequestMapping("/about")
	public String about() {
		return "about";
	}

	@GetMapping("/adminLoginPage")
	public String adminLogin() {
		return "adminLoginPage";
	}

	@PostMapping("/adminLoginProcess")
	public String checkAdmin(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model) {
		boolean loginFlag = adminLoginDao.validateAdmin(username, password);
		model.addAttribute("username", username);
		model.addAttribute("password", password);
		if (loginFlag == true) {
			return "adminDashboard";
		} else {
			return "loginFailed";
		}

	}

	@RequestMapping(path = "/newCustomerAccount", method = RequestMethod.GET)
	public String newCustomerAccount() {
		return "newCustomerAccount";
	}

	@Autowired
	NewAccountDao account;

	@RequestMapping("/processNewAccount")
	public String openAccount(@RequestParam("fullName") String fullName, @RequestParam("address") String address,
			@RequestParam("mobileNo") int mobileNo, @RequestParam("email") String email,
			@RequestParam("accountType") String accountType, @RequestParam("initialBalance") int balance, Model model) {
		model.addAttribute("fullName", fullName);
		model.addAttribute("address", address);
		model.addAttribute("mobileNo", mobileNo);
		model.addAttribute("email", email);
		model.addAttribute("accountType", accountType);
		model.addAttribute("initialBalance", balance);

		/*
		 * System.out.println(fullName); System.out.println(address);
		 * System.out.println(mobileNo); System.out.println(email);
		 * System.out.println(accountType); System.out.println(balance);
		 */

		Customer newacc = new Customer();
		newacc.setFullName(fullName);
		newacc.setAddress(address);
		newacc.setMobileNo(mobileNo);
		newacc.setEmail(email);
		newacc.setAccountType(accountType);
		newacc.setBalance(balance);

		int result = account.createAccount(newacc);

		if (result == 1) {
			return "accountAddedSucess";
		} else {
			return "errorPage";
		}

	}

}
