<!doctype html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="utf-8">
<title>主页</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>game/css/index.css">
</head>
<body>
<div style="margin:auto; width:100%; height:100%; overflow:hidden; position:absolute; background-color:#000;">
<div style="width:900px; height:100%; background:#FFF; margin:auto;">
<iframe style="border:0;" name="myFrame" scrolling="no" width="574" height="685">
</iframe>
<form id="login" style="width:899px; height:auto; overflow:hidden;border:1px solid #F00; border-radius:4px; position:absolute; bottom:0; background-color:#6FF;">
<ul>
<li><a href="1.html" target="myFrame" class="btn">基地</a></li>
<li><a href="<%=basePath %>pack/getEquip" target="myFrame" class="btn">装备库</a></li>
<li><a href="4.html" target="myFrame" class="btn">资料库</a></li>
<li><a href="<%=basePath%>pack/getTankFromP_Id" target="myFrame" class="btn">车库</a></li>
<li><a href="6.html" target="myFrame" class="btn">科研所</a></li>
<li><a href="<%=basePath%>game/npc/npc_list.jsp" target="myFrame" class="btn">中心</a></li>
</ul>
</form>
</div>
</div>
</body>
</html>
	