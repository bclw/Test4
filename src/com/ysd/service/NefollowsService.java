package com.ysd.service;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Nefollows;
import com.ysd.entity.Student;

public interface NefollowsService {
	
	Fenye<Student> selectStudent(Fenye<Student> fenye);
	//Ìí¼Ó
    Integer insertStudent(Student student);	
	//ÐÞ¸Ä
    Integer updateStudent(Student student);	
	
	List<Student> getStudent();
}
