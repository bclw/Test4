package com.cxm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxm.dao.StudentMapper;
import com.cxm.entity.Classes;
import com.cxm.entity.Fenye;
import com.cxm.entity.Student;

@Service
public class StudentServiceImp implements StudentService{
	@Autowired
	private StudentMapper studentMapper;
	
	public Fenye<Student> selectStu(Fenye<Student> fenye) {
		Integer count = studentMapper.selectStuCount(fenye);
		List<Student> selectStu = studentMapper.selectStu(fenye);
		fenye.setRows(selectStu);
		fenye.setTotal(count);
		return fenye;
	}

	public Integer updateStu(Student student) {
		return studentMapper.updateStu(student);
	}

	public Integer deleteStu(Integer sId) {
		return studentMapper.deleteStu(sId);
	}

	public Integer insertStu(Student student) {
		return studentMapper.insertStu(student);
	}

	public List<Classes> getClasses() {
		return studentMapper.getClasses();
	}
}
