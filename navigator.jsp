<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 左侧部分 -->
<div class="menu">
	<div class="cont">
		<div class=“title”>管理员</div>
		<ul class="mlist">
			<li>
				<h3><span>-</span>人员管理</h3>
				<dl>
					<dd><a href="${ pageContext.request.contextPath }/person/main"></a>人员列表</dd>
					<dd><a href="${ pageContext.request.contextPath }/person.addPrompt"></a>新增人员</dd>
				</dl>
			</li>
		</ul>
	</div>
</div>
