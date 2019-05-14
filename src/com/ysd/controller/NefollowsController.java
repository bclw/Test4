package com.ysd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ysd.entity.Fenye;
import com.ysd.entity.Nefollows;
import com.ysd.entity.Student;
import com.ysd.service.NefollowsService;

@Controller
public class NefollowsController {

	@Autowired
	private Fenye<Student> fenye;
	@Autowired
	private NefollowsService nefollowsService;
	
	
	@RequestMapping(value="/showf",method=RequestMethod.POST)
	@ResponseBody
	public Fenye<Student> showNefollows(Integer page,Integer rows,String sName,String sPhone,Integer sZiXunId,String sIsPay,Integer sIsValid,
			Integer sIsReturnVist,Integer sQQ,String sCreateTime){	
		//nefollows.setStudent(student);
		//fenye.setStudent(student);
		
		fenye.setPage((page-1)*rows);
		fenye.setPageSize(rows);		
		fenye.setsName(sName);
		fenye.setsPhone(sPhone);
		fenye.setsZiXunId(sZiXunId);
		fenye.setsIsPay(sIsPay);
		fenye.setsIsValid(sIsValid);
		fenye.setsIsReturnVist(sIsReturnVist);
		fenye.setsQQ(sQQ);
		fenye.setsCreateTime(sCreateTime);
	
		fenye=nefollowsService.selectStudent(fenye);
		System.out.println(fenye+"--------------------------------------");
		return fenye;
		
	}
	
	@RequestMapping(value="/getStudent",method=RequestMethod.POST)
	@ResponseBody
	public List<Student> getStudent(){
		return nefollowsService.getStudent();
		
	}
	
	@RequestMapping(value="/insertStudent",method=RequestMethod.POST)
	@ResponseBody
	public Integer insertStudent(Student student){
		return nefollowsService.insertStudent(student);
		
	}
	@RequestMapping(value="/updateStudent",method=RequestMethod.POST)
	@ResponseBody
	public Integer updateStudent(Student nefollows){
		return nefollowsService.updateStudent(nefollows);
		
	}
}
