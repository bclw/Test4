package com.ysd.service;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Nefollows;

public interface NefollowsService {
	
	Fenye<Nefollows> selectNefollows(Fenye<Nefollows> fenye);
/*	//���
    Integer insertStudent(Student student);	
	//�޸�
    Integer updateStudent(Student student);	
	
	List<Student> getStudent();*/
}
