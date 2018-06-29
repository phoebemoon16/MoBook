<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.kzw.com/mytag" prefix="k"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en-us"> 
<head>
<meta charset="utf-8">
<base href="<%=basePath%>pages/gym/">
<link rel="stylesheet" type="text/css" media="screen"
	href="../../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="../../css/your_style.css">
</head>

<!--
	The ID "widget-grid" will start to initialize all widgets below 
	You do not need to use widgets if you dont want to. Simply remove 
	the <section></section> and you can use wells or panels instead 
	-->
<body>

	<div class="container">
		<!-- row -->
		<div class="row">

			<!-- NEW WIDGET START -->
			<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div>
					<div class="widget-body">
						<form class="form-horizontal">
							<input type="hidden" name="id" value="${goods.id}">

							<table class="bs-table" >
							  <tr>
	                     		<td colspan="2"> 
	                     			<input class="form-control" type="hidden" id="imgUrl" style="width:78%;display:inline;float:left;" name ="imgUrl" type="text" value="${goods.imgUrl}" readonly="readonly"/>
	                     			<img id="imgS" width="100" src="<%=path%>${goods.imgUrl}" style="width:300px;left:250px;"/>
	                     		</td>
	                     	</tr>
								<tr>
									<td width="50">名称：</td>
									<td><input class="form-control" name="name" type="text"
										value="${goods.name}" /></td>
									<td width="80">类别：</td>
									<td><input class="form-control" name="bookType" type="text"
										value="${goods.bookType}" /></td>
								</tr>
								
								<tr>
									<td width="80">详细说明：</td>
									<td colspan="3"> <input class="form-control" name="detail" type="text"
										value="${goods.detail}" /></td>
								</tr>

							</table>
						</form>

					</div>
				</div>

			</article>
			<!-- WIDGET END -->

		</div>
		<!-- end row -->
	</div>
	<!-- 时间选择器 -->
	<script src="../../js/plugin/My97DatePicker/WdatePicker.js"></script>
	<!-- 附件选择器 -->
	<script src="../../js/libs/jquery-2.1.1.min.js"></script>
	<script type="text/javascript">
	
	</script>
</body>

</html>
