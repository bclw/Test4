package com.ysd.dao;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.User;

public interface UserMapper {
	/**
	 * 根据名称查询用户是否存在(登陆)
	 * 
	 * @param u
	 * @return
	 */
	List<User> selectUserByname(User u);
	/**
	 * 更新用户登陆信息
	 * @param u
	 * @return
	 */
	Integer updateUserLoginInfo(User u);
}
