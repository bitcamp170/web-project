<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${productCategoryNum==1 }">
	<c:forEach var="item" items="${productMap.meat }">
		 ${item.product_id } ${item.price }
	</c:forEach>
</c:if>
<c:if test="${productCategoryNum==2 }">
	<c:forEach var="item" items="${productMap.vegetable }">
		 ${item.product_id } ${item.price }
	</c:forEach>
</c:if>
<c:if test="${productCategoryNum==3 }">
	<c:forEach var="item" items="${productMap.bakery }">
		 ${item.product_id } ${item.price }
	</c:forEach>
</c:if>
</body>
</html>