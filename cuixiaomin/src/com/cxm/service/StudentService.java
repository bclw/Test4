package com.cxm.service;


import java.util.List;

import com.cxm.entity.Classes;
import com.cxm.entity.Fenye;
import com.cxm.entity.Student;


public interface StudentService {
	
	Fenye<Student> selectStu(Fenye<Student> fenye);
	
	Integer updateStu(Student student);
	
	Integer deleteStu(Integer sId);
	
	Integer insertStu(Student student);
	
	List<Classes> getClasses();
}
