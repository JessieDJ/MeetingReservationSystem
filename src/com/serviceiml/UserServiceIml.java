package com.serviceiml;

import java.util.List;

import com.DAOiml.UserDAO;
import com.model.AgentForm;
import com.model.User;
import com.service.UserService;

public class UserServiceIml implements UserService {
	UserDAO ud = new UserDAO();

	@Override
	public User login(User user) {
		return ud.match(user);
		
	}
	@Override
	public boolean agentRegister(AgentForm af) {
		return ud.agentRegister(af);
	}
	@Override
	public List fetch(User user) {
		return ud.read(user);
	}

}
