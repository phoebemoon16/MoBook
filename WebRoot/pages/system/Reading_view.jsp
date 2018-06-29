<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%-- <% request.setCharacterEncoding("UTF-8"); %> --%>


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
	body{
	  background-color:#a0a0a0;
	
	 }
	   #tittle
		{
		transform:translateZ(10px);
		z-index:200px;
		text-align:center;
		font-size:60px;
		color:white;
		font-family:"楷体";
		margin-top:20px;
		opacity:1.5;
		}
		#tittle1
		{
		transform:translateZ(10px);
		z-index:200px;
	    /*margin-left: 700px;*/
	    text-align:center;
		font-size:30px;
		color:white;
		font-family:"楷体";
		margin-top:60px;
		}
		#tittle2
		{
		transform:translateZ(10px);
		z-index:200px;
	    /*margin-left: 700px;*/
	    text-align:center;
		font-size:30px;
		color:white;
		font-family:"楷体";
		margin-top:20px;
		}
		#tittle3
		{
		transform:translateZ(10px);
		z-index:200px;
	    margin-left: 700px;
	   /*  text-align:center; */
		font-size:30px;
		color:white;
		font-family:"楷体";
		margin-top:20px;
		}
		#ByTeam{
		/* margin-top:-500px; */
		    /* margin-top: -500px; */
	    font-size: 20px;
	    color: white;
	    text-align: center;
	    font-family: "楷体";
	    margin-top: 150px;

		}

		#imgBox{
		       width: 1130px;
	    height: 470px;
	    /* border: 1px solid white; */
	    margin: 100px auto;
	    overflow: hidden;
	    /* position: relative; */
	    border-radius: 20px;
	    margin-left: -15px;
	    opacity: 0.5;
	    margin-top: -20px;
     }
				
		#box{
				width:4520px;
				height:400px;
				position:absolute;
				left:0;
				-webkit-animation:changeImg 8s infinite;}
		
		.img{
		    width:1130px;
            height:600px;
            opacity:0.9;
		}

		#box:hover{
				-webkit-animation-play-state:paused;}
		#box img{
				display:block;
				float:left;}
		@-webkit-keyframes changeImg{
				0%{ left:0;}
				33%{left:-1130px;}
				66%{left:-2260px;}
				/* 88%{left:-3000px;} */
				100%{left:-3390px;}			
			}
			
			#fontBox
			{
			    position: relative;
			    margin-top:-500px;
			 
			
			}
	</style>
	

  </head>
  
  
  <body>
   
	<div id="imgBox">
    	<div id="box">
        	<img class="img" src="img/images/img_01.jpg"/>
            <img class="img" src="img/images/img_02.jpg"/>
            <img class="img" src="img/images/img_03.jpg"/>   
            <img class="img" src="img/images/img_04.jpg"/>
            
        </div>
    </div>
     <div id="fontBox">
	    <h1 id="tittle">墨香书屋</h1>
		<h2 id="tittle1">读书无疑着，须教有疑</br>有疑者，却要无疑，到这里方是长进</h2>
		<h2 id="tittle2">作为新大的学子，我们要牢记</br>童心便有爱书癖，手指今余把笔痕</h2>
		<h2 id="tittle3">----墨香书虫</h2>
		
	 </div>
	 <h3 id="ByTeam">By:School of Software XinJiang University<h3>
  </body>
</html>
