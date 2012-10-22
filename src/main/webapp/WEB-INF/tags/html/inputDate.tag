<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="html" tagdir="/WEB-INF/tags/html" %>

<%@ attribute name="name" required="true" rtexprvalue="true" %>
<%@ attribute name="label" required="false" rtexprvalue="true" %>

<c:if test="${empty label}">
	<c:set var="label" value="Enter your ${name}:" />
</c:if>


<script type="text/javascript">
$(document).ready(function() {
	console.debug("DateTimePicker was initialized for element[INPUT#${name}]");
	$('INPUT#${name}').datepicker({
		dateFormat: "dd.mm.yy"	
	});
});
</script>

<html:input name="${name}" label="${label}" />