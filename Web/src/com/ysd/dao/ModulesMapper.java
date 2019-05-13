package com.ysd.dao;

import java.util.List;

import com.ysd.entity.Modules;

public interface ModulesMapper {
	
	/**
	 * ���ݽ�ɫid����������ģ��
	 * @param list
	 * @return
	 */
	List<Modules> selectModules(List<Integer> list);
	/**
	 * ���ݸ��������ģ��
	 * @param parentId
	 * @return
	 */
	List<Modules> selectModulesByParentId(Integer parentId);

}
