<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ attribute name="href" required="true" rtexprvalue="true" %>
<%@ attribute name="text" required="true" rtexprvalue="true" %>

<spring:url value="${href}" var="hrefUrl"/>
<a href="${hrefUrl}"><button type="button" class="btn btn-primary">${text}</button></a>

