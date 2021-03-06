<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/assets/css/style.css" type="text/css" rel="stylesheet">
<title>分类管理 - 管理员</title>
<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/assets/img/icon.png">
</head>
<body>
	<div class="content clearfix">
		<div class="main-wrap">
			<div class="main">
				<div class="mod admin-article-class">
					<div class="hd">
						<h2>分类管理</h2>
					</div>
					<div class="bd">
						<div class="mod-2 article-class">
							<div class="cont">
								<div class="form-area">
									<form method="post" action="${pageContext.request.contextPath}/admin/submit_cate">
										<input type="hidden" id="id" name="id"
											value="${category.id}">
										<div class="form-item">
											<label for="txtName" class="label">分类名称</label>
											<div class="input">
												<input type="text" id="name" name="name"
													class="ipt-txt-1" value="${category.name}">
											</div>
											<div class="input">
												<input type="submit" class="ipt-submit" value="提交">
											</div>
										</div>
									</form>
								</div>
								<div class="list-cont">
									<table class="list-table">
										<tbody>
											<tr>
												<th class="tit">分类</th>
												<th class="operate">操作</th>
											</tr>
										</tbody>
										<tbody id="labArticleClass">
											<c:forEach items="${categories}" var="category"
												varStatus="status">
												<tr>
													<td class="tit">${status.index+1}: ${category.name}</td>
													<td>[ <a
														href="${pageContext.request.contextPath}/admin/update_cate/${category.id}">编辑</a> | <a
														href="${pageContext.request.contextPath}/admin/del_cate/${category.id}">删除</a> ]
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="form-area">
									<a href="${pageContext.request.contextPath}/admin/admin_home">返回管理员首页</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>