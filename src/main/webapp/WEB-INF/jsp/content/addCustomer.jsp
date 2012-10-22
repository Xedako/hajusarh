<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="html" tagdir="/WEB-INF/tags/html" %>

<fieldset>
	<legend>Add customer</legend>
	<html:form modelAttribute="customer" action="/addCustomer.json" method="POST">
		<html:input name="firstName" />
		<html:input name="lastName" />
		<html:input name="identityCode" />
		<html:input name="note" />
		<html:inputDate name="birthDate" />
		<html:input name="createdBy" />
		<html:input name="updatedBy" />
		<html:input name="cstType" />
		<html:input name="cstStateType" />
		<html:formButtons />
	</html:form>
</fieldset>
