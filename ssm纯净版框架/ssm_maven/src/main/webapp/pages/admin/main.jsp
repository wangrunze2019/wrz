<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath %>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>欢迎来到xxxApp后台管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/js/easyui/themes/icon.css">
	<script type="text/javascript" src="<%=basePath %>/static/js/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>/static/js/easyui/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout">
	<%--北丐--%>
	<div data-options="region:'north',title:'北丐',split:true" style="height: 80px"></div>
		<%--南帝--%>
	<div data-options="region:'south',title:'南丐',noheader:true,split:true" style="height: 80px">
		<center style="line-height: 70px">
			&copy;版权所有|维权必究
		</center>
	</div>
		<%--西毒--%>
	<div data-options="region:'west',iconCls:'icon-world',title:'菜单栏',split:true" style="width: 200px">
		<ul id="menu"></ul>
	</div>
		<%--中神通--%>
	<div data-options="region:'center',title:'中神通'"></div>

	<script type="text/javascript">
		$(function(){
		    $("#menu").tree({
				url:"<%=basePath %>/admin/authority/getMenus.do"
			});
		});
	</script>
</body>
</html>
