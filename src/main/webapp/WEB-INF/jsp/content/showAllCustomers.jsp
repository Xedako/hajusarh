<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="html" tagdir="/WEB-INF/tags/html" %>
<fieldset>
<legend><spring:message code="label.customers"/></legend>

<table style="display:block; overflow: auto;" class="striped tight sortable" cellspacing="0" cellpadding="0">
<thead>
	<tr>
		<th colspan="2">Actions</th>
		<th>Id</th>
		<th>firstName</th>
		<th>lastName</th>
		<th>identityCode</th>
		<th>note</th>
		<th>birthDate</th>
		<th>created</th>
		<th>createdBy</th>
		<th>updated</th>
		<th>updatedBy</th>
		<th>cstType</th>
		<th>cstStateType</th>
	</tr>
</thead>
	<tbody>
	<c:forEach var="customer" items="${customers}">
	<tr>
		<td><html:button href="deleteCustomer.html?customerId=${customer.customer}" text="Delete"/></td>
		<td><html:button href="editCustomer.html?customerId=${customer.customer}" text="Edit"/></td>
		<td>${customer.customer}</td>
		<td>${customer.firstName}</td>
		<td>${customer.lastName}</td>
		<td>${customer.identityCode}</td>
		<td>${customer.note}</td>
		<td>${customer.birthDate}</td>
		<td>${customer.created}</td>
		<td>${customer.createdBy}</td>
		<td>${customer.updated}</td>
		<td>${customer.updatedBy}</td>
		<td>${customer.cstType}</td>
		<td>${customer.cstStateType}</td>
    </tr>
	</c:forEach>
	</tbody>
    </table>
</fieldset>