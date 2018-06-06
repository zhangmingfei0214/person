<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新建</title>
<link type="text/css" rel="stylesheet" href="${ pageContext.request.contextPath }/style/backstage.css">
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="content clearfix">
		<div class="main">
			<div class="cont">
				<form action="${ pageContext.request.contextPath }/person/addPerson" method="post">
					<input type="hidden" value="${person.id}" name="id"/>
						<table style="magin-left:30px;magin-top:30px">
					
							<tr height="30px">
								<td>姓名：</td><td><input type="text" name="${person.name}" style="background:gray;height:35px;width:200px;"/></td>
							</tr>
							<tr height="30px">
								<td>身份证号：</td><td><input type="text" name="${person.idCard}" style="background:gray;height:35px;width:200px;"/></td>
							</tr>
							<tr height="30px">
								<td>电话：</td><td><input type="text" name="${person.phone}" style="background:gray;height:35px;width:200px;"/></td>
							</tr>
							<tr height="30px">
								<td>地址：</td><td><input type="text" name="${person.address}" style="background:gray;height:35px;width:200px;"/></td>
							</tr>
							<tr height="30px">
								<td align="center" colspan="2"><input type="submit" value="提交" class="mybtn"/></td>
							</tr>
					</table>
				</form>
			</div>
		</div>
		<jsp:include page="navigator.jsp"/>
	</div>
</body>
</html>