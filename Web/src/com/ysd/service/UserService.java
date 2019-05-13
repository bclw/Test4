package com.ysd.service;

import java.util.List;

import com.ysd.entity.User;

public interface UserService {

	List<User> selectByname(User u);
	
	Integer updateUserLoginInfo(User u);
}
