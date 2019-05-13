package com.ysd.dao;

import java.util.List;

import com.ysd.entity.Modules;

public interface ModulesMapper {
	
	/**
	 * 根据角色id查出所管理的模块
	 * @param list
	 * @return
	 */
	List<Modules> selectModules(List<Integer> list);
	/**
	 * 根据父类查子类模块
	 * @param parentId
	 * @return
	 */
	List<Modules> selectModulesByParentId(Integer parentId);

}
