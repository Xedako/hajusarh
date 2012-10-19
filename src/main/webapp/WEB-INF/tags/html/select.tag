<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ attribute name="name" required="true" rtexprvalue="true" %>
<%@ attribute name="items" required="true" rtexprvalue="true" type="java.util.List" %>
<%@ attribute name="itemValue" required="true" rtexprvalue="true"  %>
<%@ attribute name="selectedItemValue" required="false" rtexprvalue="true" %>
<%@ attribute name="itemLabel" required="true" rtexprvalue="true" %>
<%@ attribute name="label" required="false" rtexprvalue="true" %>

<c:if test="${empty label}">
	<c:set var="label" value="" />
</c:if>

<div class="input-group" name="${name}">
	<label class="input-label">${label}</label>
	<input type="hidden" id="${name}">
	<div class="input-error notice error" style='display:none'><form:errors path="${name}"/></div>
	<form:select path="${name}">
	<option value=""></option>
		<c:forEach var="item" items="${items}">
			<c:choose>
				<c:when test="${item[itemValue] == selectedItemValue}">
					<option value="${item[itemValue]}" selected="selected">
						<c:out value="${item[itemLabel]}"/>
					</option>
				</c:when>
				<c:otherwise>
					<option value="${item[itemValue]}">
						<c:out value="${item[itemLabel]}"/>
					</option>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</form:select>
</div>

<script type="text/javascript">
	$(document).ready(function(){
		$("div.input-group[name=${name}] select[name=${name}]").change(function(){
			$("div.input-group[name=${name}] input#${name}").val($(this).find("option:selected").val());
		});
	});
</script>