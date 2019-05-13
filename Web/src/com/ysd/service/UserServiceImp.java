package com.ysd.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ysd.dao.UserMapper;
import com.ysd.entity.User;
@Service
public class UserServiceImp implements UserService{
	@Autowired
	private UserMapper userMapper;
	
	public List<User> selectByname(User u) {
		return userMapper.selectUserByname(u);
	}

	public Integer updateUserLoginInfo(User u) {
		return userMapper.updateUserLoginInfo(u);
	}

}
