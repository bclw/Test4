package com.ysd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ysd.entity.Fenye;
import com.ysd.entity.Nefollows;
import com.ysd.service.NefollowsService;


@Controller
public class NefollowsController {
@Autowired
private Fenye fenye;
@Autowired
private NefollowsService nefollowsService;
	
@RequestMapping(value="/selectNefollows",method=RequestMethod.POST)
@ResponseBody
public Fenye<Nefollows> selectNefollows(Integer page,Integer rows,String nStudentName,String nFollowType,
		String nFollowTime,String nNextFollowTime,String nContent){
	fenye.setPage((page-1)*rows);
	fenye.setPageSize(rows);
	
	fenye.setnStudentName(nStudentName);
	fenye.setnFollowType(nFollowType);
	fenye.setnFollowTime(nFollowTime);
	fenye.setnNextFollowTime(nNextFollowTime);
	fenye.setnContent(nContent);
	
	return fenye;
	
}
	
}
