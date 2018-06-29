<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<%@ page contentType="text/html; charset=UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>ReadingTime</title>
	<style>
	#tittle
  {
	transform:translateZ(10px);
	z-index:200px;
	text-align:center;
	font-size:60px;
  font-family:"楷体";
	color:white;
	margin-top:20px;
  }
  
 
  .form1{
  position:absolute;
z-index:200px;
 border:1px solid white;
 font-size:20px;
 color:white;
 margin-left:400px;
 margin-top:20px;
 width:400px;
 height:40px;

}
.form1 .font
{
    margin-top: 5px;
    position: absolute;

}
.form1 .icon{
   background-repeat:no-repeat;
   margin-left:350px;
   height:50px;

}
  .img{
   margin-top:-200px;
   margin-left:-10px;
   width:1150px;
   height:600px;
   
  }
  #ByTeam{
		/* margin-top:-500px; */
		font-size: 20px;
		color:red;
		text-align:center;
		
	  font-family:"楷体";}
	</style>
	

  </head>
  
  
  <body>
   
	<h1 id="tittle">MoBook</h1>  
	 <form class="form1">
	<a class="font">Reading...</a>          
	<img class="icon" src="img/4.png"/>
	</form>
	    <img class="img" src="img/big.jpg"/>           
	<h3 id="ByTeam">Software of XinJiang University<h3>
  </body>
</html>
