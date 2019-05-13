package com.ysd.entity;

import java.util.List;

public class Fenye<T> {
	private Integer page;// 当前页
	private Integer pageSize;
	private Integer total;// 总条数
	private List<T> rows;
	private Student student;
}
