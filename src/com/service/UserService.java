package com.service;

import java.util.List;

import com.model.AgentForm;
import com.model.User;

public interface UserService {
	User login(User user);
	boolean agentRegister(AgentForm af);
	List fetch(User user);
}
