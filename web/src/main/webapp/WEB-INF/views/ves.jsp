<%--
  Created by IntelliJ IDEA.
  User: Сергей
  Date: 08.08.2017
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <%--<script src="/resources/js/button.js"></script>--%>
    <script src="/resources/js/bootstrap.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid"></div>
    <button type="submit" class="btn-link" style="position: relative;left: 891px;top: 422px;padding: 0;color: #040404;"><h2>ВЕС</h2></button>
        <button type="submit" class="btn-link" style="position: relative;left: 1080px;top: 374px;padding: 0;color: #040404;"><h2>НОВ</h2></button>
        <button type="submit" class="btn-link" style="position: relative;left: 1205px;top: 409px;padding: 0;color: #040404;"><h2>СХП</h2></button>
        <button type="submit" class="btn-link" style="position: relative;left: 987px;top: 593px;padding: 0;color: #040404;"><h2>БУЛ</h2></button>
    <img src="/resources/img/map.jpeg" alt="">
    <div class="btn-group" data-toggle="buttons-checkbox">
        <label class="btn btn-primary">
            <input type="checkbox"> Параметр 1
        </label>
        <label class="btn btn-primary">
            <input type="checkbox"> Параметр 2
        </label>
        <label class="btn btn-primary">
            <input type="checkbox"> Параметр 3
        </label>
    </div>
</div>



<div>
    <!-- Добавьте data-toggle="button" для эффекта залипания -->
    <button class="btn" data-toggle="button">Нажми и я залипну</button>

    <!-- Добавьте data-toggle="buttons-checkbox" для множественного залипания к элементу с классом btn-group -->
    <div class="btn-group" data-toggle="buttons-checkbox">
        <button class="btn">Левая</button>
        <button class="btn">Середина</button>
        <button class="btn">Правая</button>
    </div>

    <!-- Добавьте data-toggle="buttons-radio" для создания тумблера из группы кнопок к элементу с классом btn-group -->
    <div class="btn-group" data-toggle="buttons-radio">
        <button class="btn">Левая</button>
        <button class="btn">Середина</button>
        <button class="btn">Правая</button>
    </div>
</div>


</body>
</html>
