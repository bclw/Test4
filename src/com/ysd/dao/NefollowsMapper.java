package com.ysd.dao;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Nefollows;

public interface NefollowsMapper {
//查询网络咨询师总条数
Integer	selectNetfollowsCount(Fenye fenye);

	/**
	 * 查询网络咨询师信息
	 * @param fenye
	 * @return
	 */
List<Nefollows> selectNetfollows(Fenye fenye);


/*Integer insertStudent(Student student);	
	
Integer updateStudent(Student student);	*/

//List<Student> getStudent();
}
