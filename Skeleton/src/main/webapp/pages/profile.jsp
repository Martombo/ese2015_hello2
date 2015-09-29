<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<c:import url="template/header.jsp" />


<h1>user profile</h1>


<body>    
	<div>
        <div>${user.firstName}${user.lastName}</div>
    	<div>id: ${user.id}</div>
		<div>email: ${user.email}</div>
        <div>team: ${user.team.name}</div>
    </div>
</body>  

<c:import url="template/footer.jsp" />
