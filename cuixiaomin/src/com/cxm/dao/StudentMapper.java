package com.cxm.dao;

import java.util.List;

import com.cxm.entity.Classes;
import com.cxm.entity.Fenye;
import com.cxm.entity.Student;

public interface StudentMapper {
	/**
	 * ��ѯ������
	 * 
	 * @param fenye
	 * @return
	 */
	Integer selectStuCount(Fenye<Student> fenye);

	/**
	 * ��������ҳ��ѯ
	 * 
	 * @param fenye
	 * @return
	 */
	List<Student> selectStu(Fenye<Student> fenye);
	/**
	 * ɾ��
	 * @param id
	 * @return
	 */
	Integer deleteStu(Integer sId);
	/**
	 * �޸�
	 * @param student
	 * @return
	 */
	Integer updateStu(Student student);
	/**
	 * ���
	 * @param student
	 * @return
	 */
	Integer insertStu(Student student);
	/**
	 * �༶
	 * @return
	 */
	List<Classes> getClasses();
}
