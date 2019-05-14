package com.ysd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ysd.dao.NefollowsDaoMapper;
import com.ysd.entity.Fenye;
import com.ysd.entity.Nefollows;
import com.ysd.entity.Student;

@Service
public class NefollowsServiceImp implements NefollowsService{
	

@Autowired
private NefollowsDaoMapper nefollowsDaoMapper;

public Fenye<Student> selectStudent(Fenye<Student> fenye){
	Integer selectStudentCount = nefollowsDaoMapper.selectStudentCount(fenye);
	List<Student> selectStudent = nefollowsDaoMapper.selectStudent(fenye);
	System.out.println(selectStudent);
	fenye.setTotal(selectStudentCount);
	fenye.setRows(selectStudent);
	return fenye;	
}


@Override
public Integer insertStudent(Student student) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Integer updateStudent(Student student) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public List<Student> getStudent() {
	// TODO Auto-generated method stub
	return null;
}

}
