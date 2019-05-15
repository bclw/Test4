package com.ysd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ysd.dao.NefollowsMapper;
import com.ysd.entity.Fenye;
import com.ysd.entity.Nefollows;

@Service
public class NefollowsServiceImp implements NefollowsService{
@Autowired
private Fenye fenye;

@Autowired
private NefollowsMapper nefollowsMapper;


@Override
public Fenye<Nefollows> selectNefollows(Fenye<Nefollows> fenye) {
	Integer netfollowsCount = nefollowsMapper.selectNetfollowsCount(fenye);
	List<Nefollows> selectNetfollows = nefollowsMapper.selectNetfollows(fenye);
	fenye.setTotal(netfollowsCount);
	fenye.setRows(selectNetfollows);
	return fenye;
}

}
