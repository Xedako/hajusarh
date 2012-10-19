<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="html" tagdir="/WEB-INF/tags/html" %>

<fieldset>
	<legend>Add customer</legend>
	<html:form modelAttribute="customer" action="/addCustomer.json" method="POST">
		<html:input name="firstName" label="Enter your first name:" />
		<html:input name="lastName" label="Enter your last name:" />
		<html:input name="identityCode" label="Enter your identityCode:" />
		<html:input name="note" label="Enter your note:" />
		<html:inputDate name="birthDate" label="Enter your birthDate:" />
		<html:input name="createdBy" label="Enter your createdBy:" />
		<html:input name="updatedBy" label="Enter your updatedBy:" />
		<html:input name="cstType" label="Enter your cstType:" />
		<html:input name="cstStateType" label="Enter your cstStateType:" />
		<html:formButtons />
	</html:form>
</fieldset>
