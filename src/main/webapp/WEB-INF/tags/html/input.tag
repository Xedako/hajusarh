<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ attribute name="name" required="true" rtexprvalue="true" %>
<%@ attribute name="label" required="false" rtexprvalue="true" %>
<%@ attribute name="hidden" required="false" rtexprvalue="true" %>

<c:if test="${empty label}">
	<c:set var="label" value="" />
</c:if>

<c:if test="${empty hidden}">
	<c:set var="hidden" value="false" />
</c:if>
<c:if test="${hidden}">
	<c:set var="hiddenAttr" value="hidden=\"\"" />
</c:if>
<div class="input-group" name="${name}" ${hiddenAttr}>
	<label class="input-label">${label}</label>
	<div class="input-error notice error" style='display:none'><form:errors path="${name}"/></div>
	<form:input path="${name}"/>
</div>
