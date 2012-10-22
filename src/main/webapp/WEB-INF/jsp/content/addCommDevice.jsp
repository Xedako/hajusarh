<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="html" tagdir="/WEB-INF/tags/html" %>

<fieldset>
	<legend>Add commDevice</legend>
	<html:form modelAttribute="commDevice" action="/addCommDevice.json" method="POST">
		<html:select items="${commDeviceTypes}" name="commDeviceType" itemLabel="name" itemValue="commDeviceType" />
		<html:input name="customer" />
		<html:input name="valueText" />
		<html:input name="orderb" />
		<html:formButtons />
	</html:form>
</fieldset>