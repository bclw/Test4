package com.ysd.dao;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Nefollows;

public interface NefollowsMapper {
//��ѯ������ѯʦ������
Integer	selectNetfollowsCount(Fenye fenye);

	/**
	 * ��ѯ������ѯʦ��Ϣ
	 * @param fenye
	 * @return
	 */
List<Nefollows> selectNetfollows(Fenye fenye);


/*Integer insertStudent(Student student);	
	
Integer updateStudent(Student student);	*/

//List<Student> getStudent();
}
