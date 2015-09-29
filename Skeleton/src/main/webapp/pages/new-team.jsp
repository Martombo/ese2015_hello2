<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<c:import url="template/header.jsp" />


<h1>Team Up Here!</h1>


<form:form method="post" modelAttribute="teamForm" action="createTeam" id="teamForm" cssClass="form-horizontal"  autocomplete="off">
    <fieldset>
        <legend>Enter Team Information</legend>

        <c:set var="nameErrors"><form:errors path="name"/></c:set>
        <div class="control-group<c:if test="${not empty nameErrors}"> error</c:if>">
            <label class="control-label" for="field-name">Name</label>
            <div class="controls">
                <form:input path="name" id="field-name" tabindex="1" maxlength="35" placeholder="Name"/>
                <form:errors path="name" cssClass="help-inline" element="span"/>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn btn-primary">Team up</button>
            <button type="button" class="btn">Cancel</button>
        </div>
    </fieldset>
</form:form>




	<c:if test="${page_error != null }">
        <div class="alert alert-error">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <h4>Error!</h4>
                ${page_error}
        </div>
    </c:if>


<c:import url="template/footer.jsp" />
