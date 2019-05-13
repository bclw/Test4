<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="js/jquery-easyui-1.4.3/themes/icon.css">
<link rel="stylesheet" href="js/jquery-easyui-1.4.3/themes/default/easyui.css">
<script type="text/javascript" src="js/jquery-easyui-1.4.3/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function() {
		init();
		$("#cc").combobox({
			url:'getClasses',
			method:'post',
			valueField:'classId',//填充进 <option value='id'>text</option>    
			textField:'className'//标签中间（<option>text</option>）   

		})
		
	})
	function init() {
		var classes=$("#cc").combobox('getValue');
		if(classes=="--请选择班级--"){
			classes='';
		}
		$("#showd").datagrid({
			url : 'showStu',
			method : 'post',
			pagination:true,
			toolbar:"#bar",
			queryParams:{
				sId:$("#sId").val(),
				sName:$("#sName").val(),
				sSex:$("#sSex").val(),
				sBirthday:$("#sBirthday").val(),
				classId:classes
			}
		});
		$("#tb-frm").form("reset");//搜索完重置
	}
	
	function formattercaozuo(value,row,index){
		return "<a href='javascript:void(0)' onclick='updateStu("+index+")'>修改</a>   <a href='javascript:void(0)' onclick='deleteStu("+index+")'>删除</a>"
	}
	
	function formattersex(value,row,index){
		return value == 0 ? "女" : "男";
	}
	
	function formatterclass(value,row,index) {
		return value.className;
	}
	
	
	//修改
	function updateStu(index){
		//获取修改的数据    展示     修改    点击提交按钮
		var data=$("#showd").datagrid("getData");
		var row=data.rows[index];
		
		$("#updatecc").combobox({
			url:'getClasses',
			method:'post',
			valueField:'classId',//填充进 <option value='id'>text</option>    
			textField:'className'//标签中间（<option>text</option>）   
		})
		$("#updatecc").combobox('setValue',row.classes.classId)
		
		$("#updatefrm").form("load",row);
		$("#updatedialog").dialog("open")
		
	}
	function saveUpdat(){
		//获取修改弹窗中的所有的数据
		/* alert($("#updatecc").combobox('getValue')); */
		$.post("updateStu",{
			sId:$("#sId1").val(),
			sName:$("#sName1").val(),
			sSex:$("#sSex1").combobox(),
			sBirthday:$("#sBirthday1").val(),
			classId:$("#updatecc").combobox('getValue')
		},function(res){
			if(res>0){
				//修改成功
				$("#showd").datagrid("reload");
				$("#updatedialog").dialog("close")
				$.messager.alert("提示","修改成功");
			}else{
				//修改失败
				$.messager.alert("提示","修改失败");
			}
			
		},"json")
	}
	
	
	//删除
	function deleteStu(index) {
		var data=$("#showd").datagrid("getData");
		var row=data.rows[index];
		$.messager.confirm("提示","确认删除么？",function(r){
			if(r){
				$.post("deleteStu",{
					sId:row.sId
				},function(res){
					if(res>0){
						//删除成功
						$("#showd").datagrid("reload");
						$.messager.alert("提示","删除成功");
						
					}else{
						//删除失败
						$.messager.alert("提示","删除失败");
					}
				},"json")
				
			}
		})
		
	}
	
	
	//添加
	function addInfo(){
		 $("#insertcc").combobox({
			url:'getClasses',
			method:'post',
			valueField:'classId',//填充进 <option value='id'>text</option>    
			textField:'className'//标签中间（<option>text</option>）   
		}) 
		
		$("#insertdialog").dialog("open")
		
	}
	function saveInsert(){
		$.post("insertStu",{
			sName:$("#sName2").val(),
			sSex:$("#sSex2").val(),
			sBirthday:$("#sBirthday2").val(),
			classId:$("#insertcc").combobox('getValue')
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
	
	function closeUpdete(){
		$("#updatedialog").dialog("close");
	}
	
	function closeInsert(){
		$("#insertdialog").dialog("close");
	}
</script>
<body>
<table id="showd" class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'sId',title:'sId'"></th>
				<th data-options="field:'sName',title:'名字'"></th>
				<th data-options="field:'sSex',title:'性别',formatter:formattersex"></th>
				<th data-options="field:'sBirthday',title:'生日'"></th>
				<th data-options="field:'classes',title:'班级',formatter:formatterclass"></th>
				<th data-options="field:'caozuo',title:'操作',formatter:formattercaozuo"></th>
			</tr>
		</thead>
	</table>
	
	<div id="bar">
		<form id="tb-frm" class="easyui-form">
		  <label for="name">ID:</label>   
          <input class="easyui-validatebox" type="text" id="sId" data-options="required:true" />   
		  <label for="name">姓名:</label>   
          <input class="easyui-validatebox" type="text" id="sName" data-options="required:true" /> 
          <label for="name">性别:</label>   
          <input class="easyui-validatebox" type="text" id="sSex" data-options="required:true" /> 
          <label for="name">生日:</label>   
          <input class="easyui-validatebox" type="text" id="sBirthday" data-options="required:true" />
          <!-- 下拉列表 -->
			班级：<select id="cc" class="easyui-combobox">
				<option selected="selected" >--请选择班级--</option>
			</select>
          <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="init()">搜索</a> 
          <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="addInfo()">新增</a> 
		</form>
	</div>
	
	
	<!--修改的对话框  -->
	<div  id="updatedialog" class="easyui-dialog" data-options="modal:true,closed:true,buttons:[
	{
	text:'保存',
	handler:function(){
		saveUpdat();
		}
	},{
	text:'取消',
	handler:function(){
		closeUpdete();
		}
	}
	]">
		<form id="updatefrm" class="easyui-form">
			  <label for="name">编号:</label>   
	          <input class="easyui-validatebox" disabled="disabled" name="sId" type="text" id="sId1" data-options="required:true" />   
			  <br>
			  <label for="name">名字:</label>   
	          <input class="easyui-validatebox" name="sName" type="text" id="sName1" data-options="required:true" /> 
	          <br>
	          <label for="name">性别:</label>   
	         		<select id="sSex1" name="sex" class="easyui-combobox">
							<option value="">--请选择--</option>
							<option value="1">男</option>
							<option value="0">女</option>
					</select>
	          <br>
	          <label for="name">生日:</label>   
	          <input class="easyui-validatebox" name="sBirthday" type="text" id="sBirthday1" data-options="required:true" />
			  <br>
			  <!-- 下拉列表 -->
				班级：<select id="updatecc" class="easyui-combobox">
					<option selected="selected" >--请选择班级--</option>
				</select>
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
			  <label for="name">名字:</label>   
	          <input class="easyui-validatebox" name="sName" type="text" id="sName2" data-options="required:true" /> 
	          <br>
	          <label for="name">性别:</label>   
	          <!-- <input class="easyui-validatebox" name="sSex" type="text" id="sSex2" data-options="required:true" /> -->
	          		<select id="sSex2" name="sex" class="easyui-combobox">
							<option value="">--请选择--</option>
							<option value="1">男</option>
							<option value="0">女</option>
					</select> 
	          <br>
	          <label for="name">生日:</label>   
	          <input class="easyui-validatebox" name="sBirthday" type="text" id="sBirthday2" data-options="required:true" />
			<br>
			 <!-- 下拉列表 -->
				班级：<select id="insertcc" class="easyui-combobox">
					<option selected="selected" >--请选择班级--</option>
				</select>
			
		</form>
	</div>
</body>
</html>