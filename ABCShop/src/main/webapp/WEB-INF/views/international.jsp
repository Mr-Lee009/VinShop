<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <c:redirect url="/home"/> --%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:message code="admin" text="admin" />
<spring:message code="home" text="home" />
<a href="./international?lang=vi">VI</a>|<a href="./international?lang=en">EN</a>
Current Locale : ${pageContext.response.locale}