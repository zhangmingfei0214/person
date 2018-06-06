<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页面</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/style/backstage.css">
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="content clearfix">
		<div class="main">
		<!-- 	右侧内容 -->
		<div class="cont">
			<div class="title">人员管理</div>
				<div class="details">
					<div class="details_operation clearfix">
						<div class="bui_select">
						<div class="mybtn"><a style="color:black;"href="${ pageContext.request.contextPath }/person/addPrompt">&nbsp;&nbsp;新&nbsp;&nbsp;建&nbsp;&nbsp;</a></div>
						</div>
						<div class="fr">
							<div class="text">
								<span>搜索</span>
								<input type="text" class="search" value=""/>
							</div>
						</div>
					</div>
					<!-- 表格 -->
					<table class="table" cellspacing="0" cellpadding="0">
						<thead>
							<tr>
								<th width="100">姓名</th>
								<th width="200">身份证号</th>
								<th width="100">电话</th>
								<th width="300">地址</th>
								<th></th>
							</tr>
						</thead>
						
							<tbody>
								<c:forEach var="p" items="${persons}">
									<tr>
										<td><input type="checkbox" id="c9" class="check"/><label for="c9" class="label">${p.name}</label></td>
										<td>${p.idCard}</td>
										<td>${p.phone}</td>
										<td>${p.address}</td>
										<td align="center">
											<a class="btn" href="updatePerson?id=${p.id}">修改</a>
											<a class="btn" href="deletePersonById?id=${p.id} onclick='return confirm("确定删除吗？")'>删除</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
		</div>
		<jsp:include page="navigator.jsp"/>
</div>
</body>
</html>