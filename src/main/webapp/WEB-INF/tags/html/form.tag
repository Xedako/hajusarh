<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ attribute name="modelAttribute" required="true" rtexprvalue="true" %>
<%@ attribute name="action" required="true" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="method" required="false" rtexprvalue="true" %>

<c:if test="${empty method}">
	<c:set var="method" value="GET" />
</c:if>
<spring:url value="${action}" var="processedFormUrl" />
<form:form modelAttribute="${modelAttribute}" id="${id}" action="${processedFormUrl}" method="${method}" class="form-horizontal">
<div class="notice success" style='display:none;'>Successfully saved</div>
	<fieldset>
		<jsp:doBody />
	</fieldset>
<div class="notice success" style='display:none;'>Successfully saved</div>
</form:form>
<script type="text/javascript">
	$(document).ready(function() {
		bindAjaxValidation('${processedFormUrl}');
	});
</script>