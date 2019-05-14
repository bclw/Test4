package com.ysd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ysd.dao.StudentMapper;
import com.ysd.entity.Fenye;
import com.ysd.entity.Student;
import com.ysd.service.StudentService;

@Controller
public class StudentController {
@Autowired
private Fenye fenye;
@Autowired
private StudentService studentService;

@RequestMapping(value="/showStuent",method=RequestMethod.POST)
@ResponseBody
public Fenye<Student> shows(Integer page,Integer rows,String sName){
	
	fenye.setPage((page-1)*rows);
	fenye.setPageSize(rows);	
	
	fenye.setsName(sName);

	studentService.selectStu(fenye);
			return fenye;	
	
}

@RequestMapping(value="/insertStu",method=RequestMethod.POST)
@ResponseBody
public Integer insertStu(Student student) {
	return studentService.insertStu(student);
}


@RequestMapping(value="/updateStu",method=RequestMethod.POST)
@ResponseBody
public Integer updateStu(Student student){
	return studentService.updateStu(student);
	
}
}
