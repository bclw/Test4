package com.cxm.dao;

import java.util.List;

import com.cxm.entity.Classes;
import com.cxm.entity.Fenye;
import com.cxm.entity.Student;

public interface StudentMapper {
	/**
	 * 查询总条数
	 * 
	 * @param fenye
	 * @return
	 */
	Integer selectStuCount(Fenye<Student> fenye);

	/**
	 * 多条件分页查询
	 * 
	 * @param fenye
	 * @return
	 */
	List<Student> selectStu(Fenye<Student> fenye);
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	Integer deleteStu(Integer sId);
	/**
	 * 修改
	 * @param student
	 * @return
	 */
	Integer updateStu(Student student);
	/**
	 * 添加
	 * @param student
	 * @return
	 */
	Integer insertStu(Student student);
	/**
	 * 班级
	 * @return
	 */
	List<Classes> getClasses();
}
