<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="html" tagdir="/WEB-INF/tags/html" %>
<fieldset>
<legend>All CommDevices</legend>

<table style="display:block; overflow: auto;" class="striped tight sortable" cellspacing="0" cellpadding="0">
<thead>
	<tr>
		<th colspan="2">Actions</th>
		<th>Id</th>
		<th>commDeviceType</th>
		<th>customer</th>
		<th>valueText</th>
		<th>orderb</th>
		<th>created</th>
	</tr>
</thead>
	<tbody>
		<c:forEach var="commDevice" items="${commDevices}">
			<tr>
				<td><html:button href="deleteCommDevice.html?commDeviceId=${commDevice.commDevice}" text="Delete"/></td>
				<td><html:button href="editCommDevice.html?commDeviceId=${commDevice.commDevice}" text="Edit"/></td>
				<td>${commDevice.commDevice}</td>
				<td>${commDevice.commDeviceType.name}</td>
				<td>${commDevice.customer}</td>
				<td>${commDevice.valueText}</td>
				<td>${commDevice.orderb}</td>
				<td>${commDevice.created}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</fieldset>