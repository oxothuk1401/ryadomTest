<%--
  Created by IntelliJ IDEA.
  User: Amal Kabulov
  Date: 01.05.2017
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

</head>

<body>
<div class="container">
<form:form method="POST" modelAttribute="teacherForm" class="form-signin">
    <h2 class="form-signin-heading">Create your account</h2>

    <spring:bind path="name">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="name" class="form-control" placeholder="Name"
                        autofocus="true"></form:input>
            <form:errors path="name"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="surname">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="surname" class="form-control" placeholder="Surname"
                        autofocus="true"></form:input>
            <form:errors path="surname"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="country">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="country" class="form-control" placeholder="Country"></form:input>
            <form:errors path="country"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="city">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="city" class="form-control" placeholder="City"
                        autofocus="true"></form:input>
            <form:errors path="name"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="phoneNumber">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="phoneNumber" class="form-control" placeholder="Phone number"
                        autofocus="true"></form:input>
            <form:errors path="phoneNumber"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="skype">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="skype" class="form-control" placeholder="Skype"></form:input>
            <form:errors path="skype"></form:errors>
        </div>
    </spring:bind>



    <%--<spring:bind path="teachingLanguage">--%>
    <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
        <%--<form:input type="text" path="teachingLanguages" class="form-control" placeholder="Teaching language"--%>
                    <%--autofocus="true"></form:input>--%>
        <%--<form:errors path="teachingLanguages"></form:errors>--%>
    <%--</div>--%>
    <%--</spring:bind>--%>

    <%--<spring:bind path="motherTongue">--%>
    <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
        <%--<form:input type="text" path="motherTongues" class="form-control" placeholder="Mother tongue"--%>
                    <%--autofocus="true"></form:input>--%>
        <%--<form:errors path="motherTongues"></form:errors>--%>
    <%--</div>--%>
    <%--</spring:bind>--%>

    <%--<spring:bind path="interLanguage">--%>
    <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
        <%--<form:input type="text" path="interlanguages" class="form-control" placeholder="Inter language"></form:input>--%>
        <%--<form:errors path="interlanguages"></form:errors>--%>
    <%--</div>--%>
    <%--</spring:bind>--%>

    <%--<spring:bind path="preparingExam">--%>
    <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
        <%--<form:input type="text" path="preparingExams" class="form-control" placeholder="Preparing exam"--%>
                    <%--autofocus="true"></form:input>--%>
        <%--<form:errors path="preparingExams"></form:errors>--%>
    <%--</div>--%>
    <%--</spring:bind>--%>

    <%--<spring:bind path="teachingCompetence">--%>
    <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
        <%--<form:input type="text" path="specialCompetence" class="form-control" placeholder="Teaching competence"--%>
                    <%--autofocus="true"></form:input>--%>
        <%--<form:errors path="specialCompetence"></form:errors>--%>
    <%--</div>--%>
    <%--</spring:bind>--%>

    <%--<spring:bind path="skype">--%>
    <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
        <%--<form:input type="text" path="skype" class="form-control" placeholder="Skype"></form:input>--%>
        <%--<form:errors path="skype"></form:errors>--%>
    <%--</div>--%>
    <%--</spring:bind>--%>

    <select name="teachingLanguage" class="selectpicker" style="border: 1px solid #DBDBDB;">
        <option value="">Выберите язык</option>
        <option value="Английский" selected>Английский</option>
        <option value="Русский">Русский</option>
        <option value="Азербайджанский">Азербайджанский</option>
        <option value="Албанский">Албанский</option>
        <option value="Армянский">Армянский</option>
        <option value="Африкаанс">Африкаанс</option>
        <option value="Баскский">Баскский</option>
        <option value="Белорусский">Белорусский</option>
        <option value="Болгарский">Болгарский</option>
        <option value="Вьетнамский">Вьетнамский</option>
        <option value="Голландский">Голландский</option>
        <option value=">Греческий">Греческий</option>
        <option value="Иврит">Иврит</option>
        <option value="Игбо">Игбо</option>
        <option value="Индонезийский">Индонезийский</option>
        <option value="Исландский">Исландский</option>
        <option value="Испанский">Испанский</option>
        <option value="Кантонский">Кантонский</option>
        <option value="Корейский">Корейский</option>
        <option value="Латинский">Латинский</option>
        <option value="Латышский">Латышский</option>
        <option value="Литовский">Литовский</option>
        <option value="Монгольский">Монгольский</option>
        <option value="Непальский">Непальский</option>
        <option value="Норвежский">Норвежский</option>
        <option value="Персидский(фарси)">Персидский(фарси)</option>
        <option value="Польский">Польский</option>
        <option value="Румынский">Румынский</option>
        <option value="Датский">Датский</option>
        <option value="Сербский">Сербский</option>
        <option value="Словацкий">Словацкий</option>
        <option value="Словенский">Словенский</option>
        <option value="Татарский">Татарский</option>
        <option value="Тайский">Тайский</option>
        <option value="Турецкий">Турецкий</option>
        <option value="Туркменский">Туркменский</option>
        <option value="Украинский">Украинский</option>
        <option value="Урду">Урду</option>
        <option value="Финский">Финский</option>
        <option value="Хинди">Хинди</option>
        <option value="Хорватский">Хорватский</option>
        <option value="Чешский">Чешский</option>
        <option value="Шведский">Шведский</option>
    </select>
    <select name="motherTongue" class="selectpicker" style="border: 1px solid #DBDBDB;">
        <option value="" selected>Выберите язык</option>
        <option value="Английский">Английский</option>
        <option value="Русский">Русский</option>
        <option value="Азербайджанский">Азербайджанский</option>
        <option value="Албанский">Албанский</option>
        <option value="Армянский">Армянский</option>
        <option value="Африкаанс">Африкаанс</option>
        <option value="Баскский">Баскский</option>
        <option value="Белорусский">Белорусский</option>
        <option value="Болгарский">Болгарский</option>
        <option value="Вьетнамский">Вьетнамский</option>
        <option value="Голландский">Голландский</option>
        <option value=">Греческий">Греческий</option>
        <option value="Иврит">Иврит</option>
        <option value="Игбо">Игбо</option>
        <option value="Индонезийский">Индонезийский</option>
        <option value="Исландский">Исландский</option>
        <option value="Испанский">Испанский</option>
        <option value="Кантонский">Кантонский</option>
        <option value="Корейский">Корейский</option>
        <option value="Латинский">Латинский</option>
        <option value="Латышский">Латышский</option>
        <option value="Литовский">Литовский</option>
        <option value="Монгольский">Монгольский</option>
        <option value="Непальский">Непальский</option>
        <option value="Норвежский">Норвежский</option>
        <option value="Персидский(фарси)">Персидский(фарси)</option>
        <option value="Польский">Польский</option>
        <option value="Румынский">Румынский</option>
        <option value="Датский">Датский</option>
        <option value="Сербский">Сербский</option>
        <option value="Словацкий">Словацкий</option>
        <option value="Словенский">Словенский</option>
        <option value="Татарский">Татарский</option>
        <option value="Тайский">Тайский</option>
        <option value="Турецкий">Турецкий</option>
        <option value="Туркменский">Туркменский</option>
        <option value="Украинский">Украинский</option>
        <option value="Урду">Урду</option>
        <option value="Финский">Финский</option>
        <option value="Хинди">Хинди</option>
        <option value="Хорватский">Хорватский</option>
        <option value="Чешский">Чешский</option>
        <option value="Шведский">Шведский</option>
    </select>
    <select name="interlanguage" class="selectpicker" style="border: 1px solid #DBDBDB;">
        <option value="" selected>Выберите язык</option>
        <option value="Английский">Английский</option>
        <option value="Русский">Русский</option>
        <option value="Азербайджанский">Азербайджанский</option>
        <option value="Албанский">Албанский</option>
        <option value="Армянский">Армянский</option>
        <option value="Африкаанс">Африкаанс</option>
        <option value="Баскский">Баскский</option>
        <option value="Белорусский">Белорусский</option>
        <option value="Болгарский">Болгарский</option>
        <option value="Вьетнамский">Вьетнамский</option>
        <option value="Голландский">Голландский</option>
        <option value=">Греческий">Греческий</option>
        <option value="Иврит">Иврит</option>
        <option value="Игбо">Игбо</option>
        <option value="Индонезийский">Индонезийский</option>
        <option value="Исландский">Исландский</option>
        <option value="Испанский">Испанский</option>
        <option value="Кантонский">Кантонский</option>
        <option value="Корейский">Корейский</option>
        <option value="Латинский">Латинский</option>
        <option value="Латышский">Латышский</option>
        <option value="Литовский">Литовский</option>
        <option value="Монгольский">Монгольский</option>
        <option value="Непальский">Непальский</option>
        <option value="Норвежский">Норвежский</option>
        <option value="Персидский(фарси)">Персидский(фарси)</option>
        <option value="Польский">Польский</option>
        <option value="Румынский">Румынский</option>
        <option value="Датский">Датский</option>
        <option value="Сербский">Сербский</option>
        <option value="Словацкий">Словацкий</option>
        <option value="Словенский">Словенский</option>
        <option value="Татарский">Татарский</option>
        <option value="Тайский">Тайский</option>
        <option value="Турецкий">Турецкий</option>
        <option value="Туркменский">Туркменский</option>
        <option value="Украинский">Украинский</option>
        <option value="Урду">Урду</option>
        <option value="Финский">Финский</option>
        <option value="Хинди">Хинди</option>
        <option value="Хорватский">Хорватский</option>
        <option value="Чешский">Чешский</option>
        <option value="Шведский">Шведский</option>
    </select>
    <select name="exam" class="selectpicker" style="border: 1px solid #DBDBDB;">
        <option value="IELTS" selected>IELTS</option>
        <option value="TOEFL">TOEFL</option>
        <option value="ЦТ">ЦТ</option>
        <option value="ЕГЭ">ЕГЭ</option>
    </select>

    <select name="competence" class="selectpicker" style="border: 1px solid #DBDBDB;">
        <option value="занятия с детьми" selected>занятия с детьми</option>
        <option value="занятия с подростками">занятия с подростками</option>
        <option value="бизнес-коммуникация">бизнес-коммуникация</option>
        <option value="обучение новичков">обучение новичков</option>
    </select>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
</form:form>



<%--<div class="container">--%>
    <%--<form action="/register/teacher" method="post">--%>

        <%--<spring:bind path="name">--%>
            <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
                <%--<form:input type="text" name="name" class="form-control" placeholder="name" autofocus="true" path="name"></form:input>--%>
                <%--<form:errors path="name"></form:errors>--%>
            <%--</div>--%>
        <%--</spring:bind>--%>

        <%--<spring:bind path="surname">--%>
            <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
                <%--<form:input type="text" name="surname" class="form-control" placeholder="surname" path="surname"></form:input>--%>
                <%--<form:errors path="surname"></form:errors>--%>
            <%--</div>--%>
        <%--</spring:bind>--%>
        <%--<input type="text" name="dateOfBirth" class="form-control" placeholder="Date of birth">--%>


        <%--<input type="text" name="country" class="form-control" placeholder="country">--%>

        <%--<input type="text" name="city" class="form-control" placeholder="city">--%>

        <%--<input type="text" name="skype" class="form-control" placeholder="skype">--%>

        <%--<spring:bind path="phoneNumber">--%>
            <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
                <%--<form:input type="text" name="phoneNumber" class="form-control" placeholder="Phone" path="phoneNumber"></form:input>--%>
                <%--<form:errors path="phoneNumber"></form:errors>--%>
            <%--</div>--%>
        <%--</spring:bind>--%>

        <%--<input type="text" name="teachingLanguage" class="form-control" placeholder="teachingLanguage">--%>

        <%--<input type="text" name="motherTongue" class="form-control" placeholder="motherTongue">--%>

        <%--<input type="text" name="interlanguage" class="form-control" placeholder="interlanguage">--%>

        <%--<input type="text" name="exam" class="form-control" placeholder="exam">--%>

        <%--<input type="text" name="competence" class="form-control" placeholder="competence">--%>


        <%--<input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>--%>

        <%--<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>--%>
    <%--</form>--%>
<%--</div>--%>
<!-- /container -->
</body>
</html>
