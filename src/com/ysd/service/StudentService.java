package com.ysd.service;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Student;

public interface StudentService {
	//ѧ������
			Fenye<Student> selectStu(Fenye<Student> fenye);
			
		
			
			//�޸�ѧ����Ϣ
			Integer updateStu(Student student);
			
			
			
			//���ѧ����Ϣ
			Integer insertStu(Student student);
}
