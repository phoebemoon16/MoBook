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
							<input type="hidden" name="id" value="${shareReading.id}">

							<table class="bs-table" >
							  <tr>
	                     		<td width="70">图书照片</td>
	                     		<td colspan="2"> 
	                     			<input class="form-control" type="hidden" id="imgUrl" style="width:78%;display:inline;float:left;" name ="imgUrl" type="text" value="${shareReading.imgUrl}" readonly="readonly"/>
	                     			<img id="imgS" width="100" src="<%=path%>${shareReading.imgUrl}" style="width:120px;"/>
	                     			<!-- <a href="javascript:selectFileAttach()" class="btn btn-default"><span class="glyphicon glyphicon-search"></span> 选择</a> -->
	                     		</td>
	                     	</tr>
								<tr>
									<td width="80">名称：</td>
									<td><input class="form-control" name="bookName" type="text"
										value="${shareReading.bookName}" /></td>
									<td width="80">借书人：</td>
									<td><input class="form-control" name="perName" type="text"
										value="${shareReading.perName}" /></td>
								</tr>
								<%-- <tr>
									<td width="80">类别：</td>
									<td><input class="form-control" name="bookType" type="text"
										value="${shareReading.bookType}" /></td>
									<td width="80">库存量：</td>
									<td><input class="form-control" name="stock" type="text"
										value="${shareReading.stock}" /></td>
								</tr> --%>
								<tr>
									<td width="80">详细说明：</td>
									<td colspan="3"> <input class="form-control" name="deTail" type="text"
										value="${shareReading.deTail}" /></td>
									<td width="80">联系方式：</td>
									<td colspan="3"> <input class="form-control" name="telNum" type="text"
										value="${shareReading.telNum}" /></td>
								</tr>
								<%-- <tr>
	                     			<td width="70">借书日期</td>
	                     			<td>
	                     				<input class="form-control" onfocus="WdatePicker()" id="beginTime" name="beginTime" type="text" value="<fmt:formatDate value="${shareReading.beginTime}" pattern="yyyy-MM-dd"/>"/></td>
	                     			<td width="70">还书日期</td>
	                     			<td>
	              						<input class="form-control" onfocus="WdatePicker()" id="endTime" name="endTime" type="text" value="<fmt:formatDate value="${shareReading.endTime}" pattern="yyyy-MM-dd"/>"/></td>
	                     		</tr> --%>

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
	// 选择附件
	<%-- function selectFileAttach() {
		top.layer.open({
			type: 2,
			title: '文件选择器',
			content: '<%=path%>/pages/selector/fileAttach_selector_pic.jsp',
			area: ['800px', '600px'],
			maxmin: true,
			btn: ['确定', '取消'],
			yes: function(index, layero) {
				// 获得值
				var arr = layero.find('iframe')[0].contentWindow.getUrl();
				if(arr.length == 0) {
					top.layer.msg('请选择一张图片');
					return;
				}
				$('#imgUrl').val(arr[0]);
				$('#imgS').attr('src', arr[0]);
				top.layer.close(index);
			}
		});	
	} --%>
	</script>
</body>

</html>
