<%@page import="entity.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>mod页面</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#add").click(function(){
		var name = $("#name").val();
		var age = $("#age").val();
		var sex = $("#sex option:selected").val();
		var number = $("#number").val();
		var patr = $("#patr").val();
		var teacher = $("#teacher").val();
		var classd = $("#class option:selected").val();
		if(teacher  == "无"){
			alert("老师不能为空（请选择班级）");
			//return false;
		}else if(name == ""){
			alert("学生姓名不能为空");
		}
		else if(age == ""){
			alert("年龄不能为空");
		}
		else if(number == ""){
			alert("学号不能为空");
		}
		else {
			window.location.href="addStudent?name="
					+name+"&age="+age+"&sex="+sex+"&number="+number
					+"&patriarch="+patr;
		}
	});
	
	$("#updeat").click(function(){
		var name = $("#name").val();
		var age = $("#age").val();
		var sex = $("#sex option:selected").val();
		var number = $("#number").val();
		var patr = $("#patr").val();
		var teacher = $("#teacher").val();
		var classd = $("#class option:selected").val();
		if(teacher  == "无"){
			alert("老师不能为空（请选择班级）");
			//return false;
		}else if(name == ""){
			alert("学生姓名不能为空");
		}
		else if(age == ""){
			alert("年龄不能为空");
		}
		else if(number == ""){
			alert("学号不能为空");
		}
		else {
			window.location.href="addStudent?name="
					+name+"&age="+age+"&sex="+sex+"&number="+number
					+"&patriarch="+patr;
		}
	});
})

</script>
</head>
<%
	int id = 0;
	List<Student> stu = null;
	if((Integer)request.getAttribute("id") != null){
		id = (Integer)request.getAttribute("id");
	}
	if((List<Student>)request.getAttribute("student") != null){
		stu = (List<Student>)request.getAttribute("student");
	}
%>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">添加修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    <%
    if(id != 0){
    	for(Student stud : stu){
    %>
    
    <ul class="forminfo">
    <li><label>学生姓名</label><input id="name" type="text" value="<%=stud.getName() %>" class="dfinput" placeholder="请输入姓名"/></li>
    <li><label>学生性别</label>
      <select id="sex" style="border:1px solid black;width: 350px;height: 30px"  id="sid" onchange="selectcity()"> 
            <option><%=stud.getSex()%></option>  
            <option>男</option>  
            <option>女</option>  
    </select>  
    </li>
    <li><label>学生年龄</label><input id="age" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" class="dfinput" value="<%=stud.getAge() %>" placeholder="请输入年龄（只能填写数字）"/></li>
    <li><label>学号</label><input id="number" onkeyup="this.value=this.value.replace(/\D/g,'')" class="dfinput" value="<%=stud.getNumber() %>" placeholder="请输入学号（只能填写数字）"/></li>
    <li><label>家长姓名</label><input  id="patr" type="text" class="dfinput" value="<%=stud.getPatriarch() %>" placeholder="请输入家长姓名"/></li>
     <li><label>老师姓名</label><input id="teacher" type="text" class="dfinput" value="<%=stud.getTeacher_id() %>" disabled="disabled"/></li>
    <li><label>请选择班级</label>
    <select id="class" style="border:1px solid black;width: 350px;height: 30px"  id="sid" >  
            <option><%if(stud.getCollege_id() != null) {%> 
            					<%=stud.getCollege_id()%> 
            		<%
            		}else{
            		%>
            		 请选择班级
            		<%
            		}
            %>
           </option>  
            <option>软件二班</option>  
            <option>软件三班</option>  
            <option>软件四班</option>  
            <option>通信一班</option>  
    </select>  
    </li>
    <li><label>&nbsp;</label><input id="updeat" type="button" class="btn" value="提交"/></li>
    </ul>
    <%
    	}
    }else{
    %>
    <ul class="forminfo">
    <li><label>学生姓名</label><input id="name" type="text" value="" class="dfinput" placeholder="请输入姓名"/></li>
    <li><label>学生性别</label>
      <select id="sex" style="border:1px solid black;width: 350px;height: 30px"  id="sid" onchange="selectcity()">  
            <option>男</option>  
            <option>女</option>  
    </select>  
    </li>
    <li><label>学生年龄</label><input id="age" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" class="dfinput" placeholder="请输入年龄（只能填写数字）"/></li>
    <li><label>学号</label><input id="number" onkeyup="this.value=this.value.replace(/\D/g,'')" class="dfinput" placeholder="请输入学号（只能填写数字）"/></li>
    <li><label>家长姓名</label><input  id="patr" type="text" class="dfinput" placeholder="请输入家长姓名"/></li>
     <li><label>老师姓名</label><input id="teacher" type="text" class="dfinput" value="无" disabled="disabled"/></li>
    <li><label>请选择班级</label>
    <select id="class" style="border:1px solid black;width: 350px;height: 30px"  id="sid" >  
            <option>请选择班级</option>  
            <option>软件二班</option>  
            <option>软件三班</option>  
            <option>软件四班</option>  
            <option>通信一班</option>  
    </select>  
    </li>
    <li><label>&nbsp;</label><input id="add" type="button" class="btn" value="提交"/></li>
    </ul>
    <%
    } 
    %>
    </div>
</body>
</html>

