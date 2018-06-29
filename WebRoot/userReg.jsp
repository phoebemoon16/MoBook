<%@page contentType="text/html"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<title>墨香书屋用户注册页面</title>
		<link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon"/>
		<link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon"/>
		<style>
		
		#box1{
			float:left;
	
		}
		
.img1{
    text-align: center;
    position: absolute;
    left: 100px;
	width:300px;
    color: white;
    top: 50px;

       }
h2{
	font-family:"楷体";
	position: absolute;
	color: white;
}			
		
#h1{
    text-align: center;
    position: absolute;
    left: 600px;
    color: white;
    top: 5px;

      }
#h2
	{
	/*font-family:"楷体";
	position: absolute;
	 color: white;*/
    left: 550px;
    top: 100px;
	  }
#h21
	  {
	 /*font-family:"楷体";
	position: absolute;
	color: white;*/
    left: 550px;
    top: 180px;
	   }
	   
 #h22
	  {
	 /*font-family:"楷体";
	position: absolute;
	color: white;*/
    left: 550px;
    top: 260px;
	  
	   }
#h23
	  {
	 /*font-family:"楷体";
	position: absolute;
	color: white;*/
    left: 550px;
    top: 340px;
	  
	   }
#h24
	  {
	 /*font-family:"楷体";
	position: absolute;
	color: white;*/
    left: 550px;
    top: 420px;
	   }
#h25
	  {
	 /*font-family:"楷体";
	position: absolute;
	color: white;*/
    left: 700px;
    top: 420px;
	   }
	   
#snum
	   {
	   border:1px solid white;
	   margin-left:50px;
	   
	   }
 #pass1
	 {
	      margin-left: 60px;
	 }
 #pass2
	 {
	      margin-left: 10px;
	 }
#userName
	 {
	      margin-left: 35px;
	 }
	 
	 #img2{
	  height:750px;
	  wdith:100%;
	 }
		</style>
	</head>
	
	<%-- <body style="background-image: url(<%=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/" %>img/resgin/r3.jpg);"> --%>
		<form action="<%=path %>/user/resign" name="form1" method="post">
		    <img id="img2" src="img/r3.jpg"/>
			<div id="box1">
			
		        <h1 id="h1">用户注册</h1>
				
				<h2 id="h2"><label>学号：</label>
				<input id="snum" type="text" name="snum" size="20"></h2>
				
				<h2 id="h21">用户名：<input id="userName" type="text" name="userName" size="20"><h2>
				<h2 id="h22">密码：<input id="pass1" type="password" name="pass1" size="20"><h2>
				<h2 id="h23"><label>确认密码：</label><input id="pass2" type="password" name="pass2" size="20"></h2>
				<h2 id="h24"><input type="reset" value="重&nbsp;&nbsp;置" style="font-size: 20px; font-family: '楷体';" /></h2>
				<h2 id="h25"><input type="button" value="注&nbsp;&nbsp;册" onclick="check1();" style="font-size: 20px; font-family: '楷体';" /></h2>
			</div>
    	</form>
    
    	<!-- 已下为js验证表单数据 -->
		<script language="javascript">
            
		    function check1()
		    {
		        
		        if(document.form1.snum.value.length!=11)
				{
				    alert("请填写长度为11位的学号");
				    return false;
				}
				if(document.form1.userName.value=="")
		        {
		            alert("请输入用户名");
		            return false;
		        }
		        if(document.form1.pass1.value=="")
		        {
		            alert("请输入密码");
		            return false;
		        }
		        if(document.form1.pass1.value.length<6)
				{
				    alert("密码不能小于6位");
				    return false;
				}
				if(document.form1.pass2.value=="")
		        {
		            alert("请输入确认密码");
		            return false;
		        }
		        if(document.form1.pass2.value!=document.form1.pass1.value)
		        {
		            alert("两次密码不一致");
		            return false;
		        }
		        document.form1.submit();
		    }
        </script>
        <script src="js/libs/jquery-2.1.1.min.js"></script>
		<script src="js/plugin/layer/layer.js"></script>
		<script src="js/jquery-1.8.2.min.js"></script>
        <script>	
			<c:if test="${!empty msg}">
				layer.alert('${msg}', {icon: 6});
			</c:if>
		</script>
	</body>
</html>
