package com.ysd.dao;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.User;

public interface UserMapper {
	/**
	 * �������Ʋ�ѯ�û��Ƿ����(��½)
	 * 
	 * @param u
	 * @return
	 */
	List<User> selectUserByname(User u);
	/**
	 * �����û���½��Ϣ
	 * @param u
	 * @return
	 */
	Integer updateUserLoginInfo(User u);
}
