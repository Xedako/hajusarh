<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="html" tagdir="/WEB-INF/tags/html" %>

<fieldset>
	<legend>Add commDevice</legend>
	<html:form modelAttribute="commDevice" action="/addCommDevice.json" method="POST">
		<html:select items="${commDeviceTypes}" name="commDeviceType" itemLabel="name" itemValue="commDeviceType" label="Enter your commDeviceType:"/>
		<html:input name="customer" label="Enter your customer:" />
		<html:input name="valueText" label="Enter your valueText:" />
		<html:input name="orderb" label="Enter your orderb:" />
		<html:formButtons />
	</html:form>
</fieldset>