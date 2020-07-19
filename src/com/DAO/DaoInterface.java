package com.DAO;

import java.util.List;

import com.model.AgentForm;
import com.model.User;

public interface DaoInterface {
	User match(User user);
	boolean agentRegister(AgentForm af);
	List read(User user);
}
