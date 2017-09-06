<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><local:message code="form.reg.student"/></title>
    <script type="text/javascript" src="/res/js/jquery-3.2.0.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="/resources/css/index.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/teachersCabinet.css">

</head>
<body>
<%@ include file="include/header_autorized.jsp" %>
<div class="container col-md-4">
    <form action="/register/student" method="post">

        <input type="text" name="name" class="form-control" placeholder="name" required>

        <input type="text" name="surname" class="form-control" placeholder="surname" required>

        <input type="text" name="dateOfBirth" class="form-control" placeholder="Date of birth" required>

        <input type="text" name="country" class="form-control" placeholder="country" required>

        <input type="text" name="city" class="form-control" placeholder="city" required>

        <input type="text" name="skype" class="form-control" placeholder="skype" required>

        <input type="text" name="phoneNumber" class="form-control" placeholder="Phone" required>

        <input type="text" name="motherTongue" class="form-control" placeholder="motherTongue" required>

        <input type="text" name="teachingLanguage" class="form-control" placeholder="teachingLanguage" required>

        <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>

        <button class="btn btn-lg btn-primary btn-block col-md-2" type="submit"><local:message code="btn.submit"/></button>
    </form>
</div>

</body>
</html>
