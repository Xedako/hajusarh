<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ attribute name="showSubmit" required="false" rtexprvalue="true" %>
<%@ attribute name="showReset" required="false" rtexprvalue="true" %>

	<c:if test="${empty showSubmit}">
		<c:set var="showSubmit" value="true" />
	</c:if>
	
	<c:if test="${empty showReset}">
		<c:set var="showReset" value="true" />
	</c:if>

<div class="form-actions">
	<c:if test="${showSubmit}">
		<button type="submit" class="btn btn-primary">Save changes</button>
	</c:if>
	<c:if test="${showReset}">
		<button type="reset" class="btn">Cancel</button>
	</c:if>
</div>