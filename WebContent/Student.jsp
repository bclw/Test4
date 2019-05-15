<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>网络学生</title>
<link rel="stylesheet" href="js/jquery-easyui-1.4.3/themes/icon.css"/>
<link rel="stylesheet" href="js/jquery-easyui-1.4.3/themes/default/easyui.css"/>
<script type="text/javascript" src="js/jquery-easyui-1.4.3/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(function(){
	init();
})

function init(){
	
	$("#showd").datagrid({
		url:'showStuent',
		method:'post',
		pagination:true,
		toolbar:'#bar',
		queryParams:{
			sName:$("#sName").val(),
			
		}
})
}

function formattercaozuo(value,row,index) {
	return "<a href='javascript:void(0)' onclick='look("+index+")'>查看</a> <a href='javascript:void(0)' onclick='update("+index+")'>修改</a>"
}

function formattersex(value,row,index) {
	return row.sex==0? '男':'女';
}

function formattersIsBaoBei(value,row,index) {
	return row.sex==0? '否':'是';
}
function formattersIsValid(value,row,index) {
	return row.sex==0? '否':'是';
}

function formattersIsReturnVist(value,row,index) {
	return row.sex==0? '否':'是';
}

function formattersIsPay(value,row,index) {
	return row.sex==0? '否':'是';
}


function look(index) {
	var datas=$("#showd").datagrid("getData");
	var row=datas.rows[index];
	
	//填充表单
	$("#lookFrm").form("load",row)
	//打开弹窗
	$("#lookDialog").dialog("open");
}

function lookEmp() {
	$.post("lookEmp",{
		sId:$("#sId").val(),
		sName:$("#sName").val(),
		sAge:$("#sAge").val(),
		sSex:$("#sSex").val(),
		sPhone:$("#sPhone").val(),
		sStuState:$("#sStuState").val(),
		sState:$("#sState").val(),
		sMsgSource:$("#sMsgSource").val(),
		sSourceUrl:$("#sSourceUrl").val(),
		sSourceKeyWord:$("#sSourceKeyWord").val(),
		sNetPusherId:$("#sNetPusherId").val(),
		sStuConcern:$("#sStuConcern").val(),
		sContent:$("#sContent").val(),
		sQQ:$("#sQQ").val(),
		sWeiXin:$("#sWeiXin").val(),
		sIsBaoBei:$("#sIsBaoBei").val(),
		sZiXunId:$("#sZiXunId").val(),
		sCreateUserId:$("#sCreateUserId").val()
	},function(res){
		if(res>0){
			$("#showd").datagrid("reload");
			$("#lookDialog").dialog("close");
			alert("修改成功！！");
		}else{
			alert("修改失败");
		}
		
	},"json");
}



//添加
function insert(){
	$("#insertdialog").dialog("open")
}
function saveInsert(){
	$.post("insertStu",{
		sName:$("#sName1").val(),
		sAge:$("#sAge1").val(),
		sSex:$("#sSex1").val(),
		sPhone:$("#sPhone1").val(),
		sStuState:$("#sStuState1").val(),
		sState:$("#sState1").val(),
		sMsgSource:$("#sMsgSource1").val(),
		sSourceUrl:$("#sSourceUrl1").val(),
		sSourceKeyWord:$("#sSourceKeyWord1").val(),
		sAddress:$("#sAddress1").val(),
		sStuConcern:$("#sStuConcern1").val(),
		sContent:$("#sContent1").val(),
		sQQ:$("#sQQ1").val(),
		sWeiXin:$("#sWeiXin1").val(),
		sIsBaoBei:$("#sIsBaoBei1").val(),
		sZiXunId:$("#sZiXunId1").val(),
		sCreateUserId:$("#sCreateUserId1").val(),		
		sNetPusherId:$("#sNetPusherId1").val()
	},function(res){
		if(res>0){
			//添加成功
			$("#showd").datagrid("reload");
			$("#insertdialog").dialog("close")
			$.messager.alert("提示","添加成功");
		}else{
			//添加失败
			$.messager.alert("提示","添加失败");
		}
		
	},"json")
}


function closeInsert(){
	$("#insertdialog").dialog("close");
}



function update(index) {
	var datas=$("#showd").datagrid("getData");
	var row=datas.rows[index];
	
	//填充表单
	$("#updateFrm").form("load",row)
	//打开弹窗
	$("#updateDialog").dialog("open");
}

function updateStu() {
	$.post("updateStu",{
		sId:$("#sId2").val(),
		sName:$("#sName2").val(),
		sSex:$("#sSex2").val(),
		sAge:$("#sAge2").val(),	
		sPhone:$("#sPhone2").val(),
		sStuState:$("#sStuState2").val(),
		sState:$("#sState2").val(),
		sMsgSource:$("#sMsgSource2").val(),
		sSourceUrl:$("#sSourceUrl2").val(),
		sSourceKeyWord:$("#sSourceKeyWord2").val(),
		sNetPusherId:$("#sNetPusherId2").val(),
		sStuConcern:$("#sStuConcern2").val(),
		sContent:$("#sContent2").val(),
		sQQ:$("#sQQ2").val(),
		sWeiXin:$("#sWeiXin2").val(),
		sIsBaoBei:$("#sIsBaoBei2").val(),
		sZiXunId:$("#sZiXunId2").val()
	},function(res){
		if(res>0){
			$("#showd").datagrid("reload");
			$("#updateDialog").dialog("close");
			alert("修改成功！！");
		}else{
			alert("修改失败");
		}
		
	},"json");
}





</script>
</head>
<body>
<table id="showd" class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'sId',title:'编号'"></th>
				<th data-options="field:'sName',title:'姓名'"></th>
			    <th data-options="field:'sAge',title:'年龄'"></th>
			    <th data-options="field:'sSex',title:'性别',formatter:formattersex"></th>
			    <th data-options="field:'sPhone',title:'电话'"></th>
			    <th data-options="field:'sStuState',title:'学历'"></th>
			    <th data-options="field:'sState',title:'状态'"></th>
			    <th data-options="field:'sStatsMsgSourcee',title:'来源渠道'"></th>
				<th data-options="field:'sSourceUrl',title:'来源网站'"></th>
				<th data-options="field:'sSourceKeyWord',title:'来源关键词'"></th>
				<th data-options="field:'sNetPusherId',title:'所在区域'"></th>
				<th data-options="field:'sStuConcern',title:'学员关注'"></th>
				<th data-options="field:'sContent',title:'来源部门'"></th>
				<th data-options="field:'sQQ',title:'学员QQ'"></th>
				<th data-options="field:'sWeiXin',title:'微信号'"></th>
				<th data-options="field:'sIsBaoBei',title:'是否报备',formatter:formattersIsBaoBei"></th>
				<th data-options="field:'sZiXunId',title:'咨询师'"></th>
				<th data-options="field:'sCreateUserId',title:'录入人'"></th>
				<th data-options="field:'sCreateTime',title:'创建时间'"></th>
				<th data-options="field:'sIsValid',title:'是否有效',formatter:formattersIsValid"></th>
				<th data-options="field:'sIsReturnVist',title:'是否回访',formatter:formattersIsReturnVist"></th>
				<th data-options="field:'sIsPay',title:'是否缴费',formatter:formattersIsPay"></th>
			<th data-options="field:'caozuo',title:'操作',formatter:formattercaozuo"></th> 
			</tr>
		</thead>
	</table>
	
	
	<div id="bar">
	<!-- 姓名关键字、电话、咨询师、是否缴费、是否有效、是否回访、QQ、创建时间/上门时间/首次回访时间/缴费时间/进班时间 -->
	   <form id="tb-frm" class="easyui-form">
		  <label for="name">姓名:</label>   
          <input class="easyui-validatebox" type="text" id="sName" data-options="required:true" />
       	  <label for="name">电话:</label>   
          <input class="easyui-validatebox" type="text" id="sPhone" data-options="required:true" />
          <label for="name">咨询师:</label>   
          <input class="easyui-validatebox" type="text" id="sZiXunId" data-options="required:true" />
          <label for="name">是否缴费:</label>   
          <input class="easyui-validatebox" type="text" id="sIsPay" data-options="required:true" />
          <label for="name">是否有效:</label>   
          <input class="easyui-validatebox" type="text" id="sIsValid" data-options="required:true" />
          <label for="name">是否回访:</label>   
          <input class="easyui-validatebox" type="text" id="sIsReturnVist" data-options="required:true" />
          <label for="name">QQ:</label>   
          <input class="easyui-validatebox" type="text" id="sQQ" data-options="required:true" />
          <label for="name">创建时间:</label>   
          <input class="easyui-validatebox" type="text" id="sCreateTime" data-options="required:true" />
    
          <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="init()">搜索</a>  
		  <a href="javascript:void(0)" class="easyui-linkbutton" onclick="insert()" data-options="iconCls:'icon-add'">新增</a>
		</form>
	</div> 
	
	
	<div id="lookDialog" class="easyui-dialog" data-options="modal:true,closed:true">
		<form id="lookFrm" class="easyui-form" >
			<table>
				<tr>
					<td>
						<label for="name">sId:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sId" name="sId" />
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="name">sName:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sName" name="sName" />
					</td>
				</tr>
				
						<tr>
					<td>
						<label for="name">sAge:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sAge" name="sAge" />
					</td>
				</tr>
				
						<tr>
					<td>
						<label for="name">sSex:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sSex" name="sSex" />
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="name">sPhone:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sPhone" name="sPhone" />
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="name">sStuState:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sStuState" name="sStuState" />
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="name">sState:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sState" name="sState" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">sMsgSource:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sMsgSource" name="sMsgSource" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">sSourceUrl:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sSourceUrl" name="sSourceUrl" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">sSourceKeyWord:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sSourceKeyWord" name="sSourceKeyWord" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">sNetPusherId:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sNetPusherId" name="sNetPusherId" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">sStuConcern:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sStuConcern" name="sStuConcern" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">sContent:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sContent" name="sContent" />
					</td>
				</tr>
			
				
				
				<tr>
					<td>
						<label for="name">sQQ:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sQQ" name="sQQ" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">sWeiXin:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sWeiXin" name="sWeiXin" />
					</td>
				</tr>
				
				
				
				<tr>
					<td>
						<label for="name">sIsBaoBei:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sIsBaoBei" name="sIsBaoBei" />
					</td>
				</tr>
				
				
				
				<tr>
					<td>
						<label for="name">sZiXunId:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sZiXunId" name="sZiXunId" />
					</td>
				</tr>
				
					<tr>
					<td>
						<label for="name">sCreateUserId:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sCreateUserId" name="sCreateUserId" />
					</td>
				</tr>
				
			</table>
		</form>
	</div>
	
	
	
	
	
	<!--添加的对话框  -->
	<div  id="insertdialog" class="easyui-dialog" data-options="modal:true,closed:true,buttons:[
	{
	text:'保存',
	handler:function(){
		saveInsert();
		}
	},{
	text:'取消',
	handler:function(){
		closeInsert();
		}
	}
	]">
		<form id="insertfrm" class="easyui-form">
	         			<table>
				
				<tr>
					<td>
						<label for="name">姓名:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sName1" name="sName" />
					</td>
				</tr>
				
						<tr>
					<td>
						<label for="name">年龄:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sAge1" name="sAge" />
					</td>
				</tr>
				
						<tr>
					<td>
						<label for="name">性别:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sSex1" name="sSex" />
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="name">电话:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sPhone1" name="sPhone" />
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="name">学历:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sStuState1" name="sStuState" />
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="name">状态:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sState1" name="sState" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">来源渠道:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sMsgSource1" name="sMsgSource" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">来源网站:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sSourceUrl1" name="sSourceUrl" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">来源关键词:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sSourceKeyWord1" name="sSourceKeyWord" />
					</td>
				</tr>
				
					
				<tr>
					<td>
						<label for="name">地址:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sAddress1" name="sAddress" />
					</td>
				</tr>
				
					<tr>
					<td>
						<label for="name">学员关注:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sStuConcern1" name="sStuConcern" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">来源部门:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sContent1" name="sContent" />
					</td>
				</tr>
				
				
				
				<tr>
					<td>
						<label for="name">学生QQ:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sQQ1" name="sQQ" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">学生微信:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sWeiXin1" name="sWeiXin" />
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="name">是否报备(是/否):</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sIsBaoBei1" name="sIsBaoBei" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">咨询师编号:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sZiXunId1" name="sZiXunId" />
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="name">录入人:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sCreateUserId1" name="sCreateUserId" />
					</td>
				</tr>
				
					<tr>
					<td>
						<label for="name">所在区域:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sNetPusherId1" name="sNetPusherId" />
					</td>
				</tr>

			
			</table>
		</form>
		</div>
		
		
		
		
		
		
		
	<div id="updateDialog" class="easyui-dialog" data-options="modal:true,closed:true">
		<form id="updateFrm" class="easyui-form" >
			table>
				<tr>
					<td>
						<label for="name">sId:</label> 
					</td>
					<td>
						<input disabled="disabled" class="easyui-validatebox" type="text" id="sId2" name="sId" />
					</td>
				</tr>
					         			
				
				<tr>
					<td>
						<label for="name">姓名:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sName2" name="sName" />
					</td>
				</tr>
				
					<tr>
					<td>
						<label for="name">性别:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sSex2" name="sSex" />
					</td>
				</tr>
				
						<tr>
					<td>
						<label for="name">年龄:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sAge2" name="sAge" />
					</td>
				</tr>
				
					
				
				<tr>
					<td>
						<label for="name">电话:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sPhone2" name="sPhone" />
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="name">学历:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sStuState2" name="sStuState" />
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="name">状态:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sState2" name="sState" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">来源渠道:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sMsgSource2" name="sMsgSource" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">来源网站:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sSourceUrl2" name="sSourceUrl" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">来源关键词:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sSourceKeyWord2" name="sSourceKeyWord" />
					</td>
				</tr>
				
								<tr>
					<td>
						<label for="name">所在区域:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sNetPusherId2" name="sNetPusherId" />
					</td>
				</tr>
					
				
				
					<tr>
					<td>
						<label for="name">学员关注:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sStuConcern2" name="sStuConcern" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">来源部门:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sContent2" name="sContent" />
					</td>
				</tr>
				
				
				
				<tr>
					<td>
						<label for="name">学生QQ:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sQQ2" name="sQQ" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">学生微信:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sWeiXin2" name="sWeiXin" />
					</td>
				</tr>
				
<tr>
					<td>
						<label for="name">是否报备(是/否):</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sIsBaoBei2" name="sIsBaoBei" />
					</td>
				</tr>
				
				
				<tr>
					<td>
						<label for="name">咨询师编号:</label> 
					</td>
					<td>
						<input class="easyui-validatebox" type="text" id="sZiXunId2" name="sZiXunId" />
					</td>
				</tr>
				
	<tr>
					<td>
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="updateStu()" >提交</a>
					</td>
					<td>
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeStu()" >取消</a>
					</td>
				</tr>
			
			</table>
			
		</form>
	</div>
	
		
</body>
</html>