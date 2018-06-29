<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>"/>
<title>墨香书屋</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta name="content-type" content="text/html; charset=UTF-8"/>
<meta charset="utf-8"/>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />	

<!-- 新增内容 -->
<title>墨香书屋</title>
<link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon"/>
<link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" href="css/supersized.css"/>
<link rel="stylesheet" href="css/font-awesome.mymin.css"/>
<link rel="stylesheet" href="css/loginMy.css"/>
<script type="text/javascript" src="js/loginMy.js"></script>
<!-- end新增内容 -->
<!-- 
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/login.css" rel="stylesheet">
 -->
</head>
<body onLoad="createCode();">
<div class="main">
	<center>
            <h1 style="color:white">墨香书屋</h1>
     </center>
	<div class="center">
			<form action="<%=path%>/user/login" id="formOne" method="post"
				onsubmit="return submitB()">
				<table>
					<i class="fa fa-user Cone"> | </i>
					<input type="text" name="uname" id="user" placeholder="用户名"
						onblur="checkUser()" />
					<span id="user_pass"></span>
					<br />
					<i class="fa fa-key Cone"> | </i>
					<input type="password" name="passwd" id="pwd" placeholder="密码"
						onblur="checkUser1()  " />
					<span id="pwd_pass"></span>
					<br />
					<i class="fa fa-rotate-right Cone" onClick="createCode()"> | </i>
					<!-- <input type="button" id="checkCode" class="code" style="width:100px" onClick="createCode()" /> -->
					<input type="button" id="checkCode" class="code"
						style="width: 100px;padding-left: 10px;margin: auto;margin-left: 110px;margin-top: 20px;"
						onclick="createCode()" value="7+6=">
					<!-- input type="text" name="surePwd" id="surePwd" placeholder="结果" style="width:80px" /> -->
					<input type="text" name="surePwd" id="surePwd" placeholder="结果"
						style="width: 60px;margin: auto;/* margin-left: 55px; */margin: auto;margin-left: 50px;">


					<span id="surePwd_pass"></span>
					<br />
					<input type="submit" value="登&nbsp;&nbsp;录" id="submit"
						name="submit" />
					<input type="button" onclick="turn()" value="注&nbsp;&nbsp;册"
						id="button" />
					<br />

					<%-- <a href="<%=request.getRealPath("") %>" style="font-family: '楷体';font-size: 15px;">新用户,去注册</a> --%>
				</table>
			</form>
		</div>
	
</div>
	<script src="js/libs/jquery-2.1.1.min.js"></script>
	<script src="js/plugin/layer/layer.js"></script>
    <script type="text/javascript" src="js/loginMy.js"></script>

        <script src="js/jquery-1.8.2.min.js"></script>
        <script src="js/supersized.3.2.7.min.js"></script>
        <script src="js/supersized-init.js"></script>
<script>	
	<c:if test="${!empty msg}">
		layer.alert('${msg}', {icon: 6});
	</c:if>
</script>
<script text="javascript">
	function turn(){
		window.location.href="<%=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/" %>userReg.jsp";
	}
</script>
</body>
</html>