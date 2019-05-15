<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>网络跟踪</title>
</head>
<link rel="stylesheet" href="js/jquery-easyui-1.4.3/themes/icon.css">
<link rel="stylesheet" href="js/jquery-easyui-1.4.3/themes/default/easyui.css">
<script type="text/javascript" src="js/jquery-easyui-1.4.3/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">







</script>

<body>
 		<table id="showd" class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'nId',title:'编号'"></th>
				<th data-options="field:'nStudentId',title:'学生编号'"></th>
			    <th data-options="field:'sAge',title:'年龄'"></th>
			    <th data-options="field:'sSex',title:'性别',formatter:formattersex"></th>
			    <th data-options="field:'sPhone',title:'电话'"></th>
			    <th data-options="field:'sStuState',title:'学历'"></th>
			    <th data-options="field:'sState',title:'状态'"></th>
			    <th data-options="field:'sStatsMsgSourcee',title:'来源渠道'"></th>
				<th data-options="field:'sSourceUrl',title:'来源网站'"></th>
				<th data-options="field:'sSourceKeyWord',title:'来源关键词'"></th>
				<th data-options="field:'sNetPusherId',title:'所在区域'"></th>				
			<th data-options="field:'caozuo',title:'操作',formatter:formattercaozuo"></th> 
			</tr>
		</thead>
	</table>
		
</body>
</html>