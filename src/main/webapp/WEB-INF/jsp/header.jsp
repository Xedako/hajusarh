<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import = "java.util.*" %>
 
 <%
	 Enumeration en = request.getParameterNames();
        String params = "?s=0";
        while (en.hasMoreElements()) {
            
            String paramName = (String) en.nextElement();
			if(!paramName.equals("lang"))
				params += "&"+paramName + "=" + request.getParameter(paramName);
		}
%>
 


<h1 class="header-title"><spring:message code="label.header"/></h1>

<div class="header-lang-choice">
	<a href="<%= params%>&lang=en">Eng</a>
	<a href="<%= params %>&lang=ee">Est</a>
	<a href="<%= params %>&lang=ru">Rus</a>
</div>


<!--
<span>
	<a href="?theme=default">def</a> 
	| 
	<a href="?theme=black">blk</a>
	| 
	<a href="?theme=blue">blu</a>
</span>
-->