package com.cxm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cxm.entity.Classes;
import com.cxm.entity.Fenye;
import com.cxm.entity.Student;
import com.cxm.service.StudentService;

@Controller
public class StudentController {
	
		@Autowired
		private StudentService studentService;
		
		@Autowired
		private Fenye<Student> fenye;
	
	
		@RequestMapping(value="/showStu",method=RequestMethod.POST)
		@ResponseBody
		public  Fenye<Student> showStu(Student student,Classes classes,Fenye<Student> fenye,Integer page,Integer rows){
			student.setClasses(classes);
			fenye.setStudent(student);
			fenye.setPage((page-1)*rows);
			fenye.setPageSize(rows);
			
			fenye= studentService.selectStu( fenye);
			
			return fenye;
			
		}

		//修改
		@RequestMapping(value="/updateStu",method=RequestMethod.POST)
		@ResponseBody
		public Integer updateStu(Classes classes,Student student){
			student.setClasses(classes);
			return studentService.updateStu(student);
		}
	
		//删除
		@RequestMapping(value="/deleteStu",method=RequestMethod.POST)
		@ResponseBody
		public Integer deleteStu(Integer sId){
			return studentService.deleteStu(sId);
		}
	
	
	
		//添加
		@RequestMapping(value="/insertStu",method=RequestMethod.POST)
		@ResponseBody
		public Integer insertStu(Classes classes,Student student){
			student.setClasses(classes);
			return studentService.insertStu(student);
		}
		
		
		//查询所有的班级返回前台为json
		@RequestMapping(value="/getClasses",method=RequestMethod.POST)
		@ResponseBody
		public List<Classes> getClasses(){
			return studentService.getClasses();
		}
	
	
}
	
	