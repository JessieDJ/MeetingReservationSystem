package action;

import java.util.ArrayList;
import java.util.List;

import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.serviceiml.UserServiceIml;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	User user = new User();
	UserServiceIml us = new UserServiceIml();
	private List list;
	private String usertype;


	public String login() throws Exception {
		System.out.println(1);
		User u = us.login(user);
		

		if (u != null) {
			ActionContext.getContext().getSession().put("user", u);
			User nowUser = u;
//			User nowUser = (User) ActionContext.getContext().getSession().get("user");
			
//			System.out.print(nowUser.getUsername() + nowUser.getGroupid());
			if (!nowUser.getGroupid().equals("admin")) {
				list = us.fetch(nowUser);
			}
				
			return nowUser.getGroupid();

		} else {
			return "failure";
		}

	}
	public void viewform() {
		System.out.println(usertype);
	}


	public void fetchData(User user) {
		list = us.fetch(user);
	}
	
	
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	@Override
	public User getModel() {
		return user;
	}
}
