package com.ysd.dao;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Nefollows;
import com.ysd.entity.Student;

public interface NefollowsDaoMapper {
//��ѯ������ѯʦ������
Integer	selectStudentCount(Fenye fenye);

	/**
	 * ��ѯ������ѯʦ��Ϣ
	 * @param fenye
	 * @return
	 */
List<Student>selectStudent(Fenye fenye);


/*Integer insertStudent(Student student);	
	
Integer updateStudent(Student student);	*/

//List<Student> getStudent();
}
