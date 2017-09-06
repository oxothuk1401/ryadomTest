<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LETSSTUDY кабинет учителя</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-3.2.0.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.offcanvas.min.js"></script>

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


    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.offcanvas.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/teachersCabinet.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/search.css">

</head>
<body>
<header id="header">
    <nav class="navbar navbar-default navbar-fixed-top navbarStyle" role="navigation">
        <div class="container-fluid padding15px">
            <div class="navbar-header">
                <a class="navbar-brand" href="/welcome"><img src="/resources/images/temporary/logo-white_small.png"
                                                             alt="logo" id="logo"></a>
                <div class="navbar-header navbar-brand currentTime">
                    <u class="colorGreen"><span id="currentTime" class="colorGreen"></span></u>
                </div>
                <button type="button" class="navbar-toggle offcanvas-toggle pull-right" data-toggle="offcanvas"
                        data-target="#js-bootstrap-offcanvas" style="float:left;">
                    <span class="sr-only">Toggle navigation</span>
                    <span>
			          <span class="icon-bar"></span>
			          <span class="icon-bar"></span>
			          <span class="icon-bar"></span>
			        </span>
                </button>
            </div>
            <div class="navbar-offcanvas navbar-offcanvas-touch" id="js-bootstrap-offcanvas">
                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <form id="logoutForm" method="POST" action="/logout">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </form>
                        <li><a href="#"><img src="/res/images/icons/myCollegs.png"> <span
                                class="colorWhite fontSize24px" id="myCollegs">Поиск преподователя</span></a></li>
                        <li><a href="#"><img src="/res/images/icons/calendar4.png" id="myCalendar"></a></li>
                        <li><a href="/show_my_chats"><img src="/res/images/icons/message1.png" id="myMessage"></a>
                        </li>
                        <li><a href="#"><img src="/res/images/icons/notice1.png" id="myNotice"></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img
                                    src="/res/images/icons/accaunt1.png"></a>
                            <ul class="dropdown-menu bgColorGrey" role="menu">
                                <li><a href="#"><span class="colorWhite fontSize24px">Личные данные</span></a></li>
                                <li><a href="#"><span class="colorWhite fontSize24px">Резюме</span></a></li>
                                <li><a href="#"><span class="colorWhite fontSize24px">Помощь</span></a></li>
                                <li><a onclick="document.forms['logoutForm'].submit()"><span
                                        class="colorWhite fontSize24px"><local:message code="index.logOut"/></span></a>
                                </li>
                            </ul>
                        </li>
                    </c:if>
                    <a href="?lang=en"><img src="/res/images/icons/en.jpg" alt="en"
                                            style="margin-right: -15px;"></a>
                    <a href="?lang=ru"><img src="/res/images/icons/rus.jpg" alt="rus"
                                            style="margin-right: -15px;"></a>
                </ul>
            </div>
        </div>
    </nav>
</header>

<section>
    <div id="content"></div>
</section>

<!-- NOTICE CONTENT -->
<div id="myNoticeContent">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <span class="h3 colorGrey">Оповещения</span>
            </div>
            <!-- 1 notice -->
            <div class="col-xs-12 col-md-12 paddingTop15px">
                <div class="col-xs-2 col-md-1 text-center">
                    <img src="/res/images/icons/label.png">
                </div>
                <div class="col-xs-10 col-md-11">
                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <p class="fontSize14px text-justify">Не следует, однако забывать, что консультация с широким
                                активом представляет собой интересный эксперимент проверки дальнейших направлений
                                развития. Товарищи! консультация с широким активом обеспечивает широкому кругу...</p>
                        </div>
                        <div class="col-xs-12 col-md-12">
                            <p class="noticeDateColor">12 июля</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 2 notice -->
            <div class="col-xs-12 col-md-12 paddingTop15px">
                <div class="col-xs-2 col-md-1 text-center">
                    <img src="/res/images/icons/label.png">
                </div>
                <div class="col-xs-10 col-md-11">
                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <p class="fontSize14px text-justify">Повседневная практика показывает, что рамки и место
                                обучения кадров позволяет оценить значение существенных финансовых и административных
                                условий. Значимость этих проблем настолько очевидна, что постоянное
                                информационно-пропагандистское обеспечение нашей деятельности обеспечивает широкому
                                кругу (специалистов) участие в формировании системы обучения кадров, соответствует
                                насущным потребностям. Задача организации, в особенности же новая модель организационной
                                деятельности играет важную роль в формировании новых предложений. Повседневная практика
                                показывает, что рамки и место обучения кадров в значительной степени обуславливает
                                создание дальнейших направлений развития. Не следует, однако забывать, что сложившаяся
                                структура организации требуют определения и уточнения модели развития. Равным образом
                                дальнейшее развитие различных форм деятельности требуют определения и уточнения
                                направлений прогрессивного развития.</p>
                        </div>
                        <div class="col-xs-12 col-md-12">
                            <p class="noticeDateColor">9 июля</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 3 notice -->
            <div class="col-xs-12 col-md-12 paddingTop15px">
                <div class="col-xs-2 col-md-1 text-center">
                    <img src="/res/images/icons/label.png">
                </div>
                <div class="col-xs-10 col-md-11">
                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <p class="fontSize14px text-justify">Не следует, однако забывать, что консультация с широким
                                активом представляет собой интересный эксперимент проверки дальнейших направлений
                                развития. Товарищи! консультация с широким активом обеспечивает широкому кругу...</p>
                        </div>
                        <div class="col-xs-12 col-md-12">
                            <p class="noticeDateColor">1 июля</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 4 notice -->
            <div class="col-xs-12 col-md-12 paddingTop15px">
                <div class="col-xs-2 col-md-1 text-center">
                    <img src="/res/images/icons/label.png">
                </div>
                <div class="col-xs-10 col-md-11">
                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <p class="fontSize14px text-justify">Не следует, однако забывать, что консультация с широким
                                активом представляет собой интересный эксперимент проверки дальнейших направлений
                                развития. Товарищи! консультация с широким активом обеспечивает широкому.</p>
                        </div>
                        <div class="col-xs-12 col-md-12">
                            <p class="noticeDateColor">22 июня</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- MESSAGE CONTENT -->
<div id="myMessageContent">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-md-4" id="myMessageFriendsName">
                        <%--один чат--%>
                        <c:forEach items="${sessionScope.res}" var="res">
                            <form action="show_this_chat" method="post">
                                <input type="hidden" name="id" value="${res.student_id}">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-2 paddingLeft0">
                                            <img src="/resources/images/teacher/${res.img}">
                                        </div>
                                        <div class="col-md-10">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <div class="col-md-8">
                                                            <span><strong>${res.username}</strong> </span><span> :flag:</span>
                                                        </div>
                                                        <div class="col-md-4 text-right">
                                                            <span>${res.date}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <input class="btn-sm btn-warning" type="submit" value="Show chat">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </c:forEach>
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-2 paddingLeft0">
                                    <img src="/res/images/icons/userPhoto.png">
                                </div>
                                <div class="col-md-10">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <span><strong>Мотя Жмотя</strong> </span><span> :flag:</span>
                                                </div>
                                                <div class="col-md-4 text-right">
                                                    <span>27 апр.</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <p>С другой стороны новая модель организационной деятельности требуют</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-2 paddingLeft0">
                                    <img src="/res/images/icons/userPhoto.png">
                                </div>
                                <div class="col-md-10">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <span><strong>Ира Козлова</strong> </span><span> :flag:</span>
                                                </div>
                                                <div class="col-md-4 text-right">
                                                    <span>2 мар.</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <p>С другой стороны новая модель организационной деятельности требуют</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-2 paddingLeft0">
                                    <img src="/res/images/icons/userPhoto.png">
                                </div>
                                <div class="col-md-10">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <span><strong>Марта Ситникова</strong> </span><span> :flag:</span>
                                                </div>
                                                <div class="col-md-4 text-right">
                                                    <span>3 мар.</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <p>С другой стороны новая модель организационной деятельности требуют</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="row">
                            <div class="col-md-12">
                                <div id="custom-search-input">
                                    <div class="input-group">
                                        <input type="text" class="form-control input-lg" placeholder="Поиск по имени..." />
                                        <span class="input-group-btn">
                                            <button class="btn btn-info btn-lg" type="button">
                                                <i class="glyphicon glyphicon-search"></i>
                                            </button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                    </div>
                    <div class="col-md-8">
                        <div class="row" id="myFriendsMessageContent">
                            <%--<div class="col-md-12">--%>
                            <%--<p class="h4 text-center"><strong>Игорь Трамп</strong></p>--%>
                            <%--</div>--%>
                            <div class="col-md-12">
                                <div class="row">
                                    <%--<div class="col-md-12 text-center styleForDateInMessage">27 февраля</div>--%>
                                    <div class="col-md-12">
                                        <%--<div class="col-md-1 paddingLeft0"><img--%>
                                        <%--src="/resources/images/icons/userPhoto.png"></div>--%>
                                        <div class="col-md-11">
                                            <c:forEach items="${showThisChat}" var="showThisChat">
                                                <div class="col-md-12 styleForDateInMessage">${showThisChat.date}</div>
                                                <div class="col-md-12">
                                                    <p class="text-justify">${showThisChat.message}</p>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-1 paddingLeft0"><img
                                                src="/res/images/icons/userPhoto.png"></div>
                                        <div class="col-md-11">
                                            <div class="col-md-12 styleForDateInMessage">13:07</div>
                                            <div class="col-md-12">
                                                <p class="text-justify">Таким образом реализация намеченных плановых
                                                    заданий требуют определения и уточнения форм развития. Не следует,
                                                    однако забывать, что новая модель организационной деятельности в
                                                    значительной степени обуславливает создание модели развития. Не
                                                    следует, однако забывать, что новая модель</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 styleForNewMessage">
                                        <div class="col-md-1 paddingLeft0"><img
                                                src="/res/images/icons/userPhoto.png"></div>
                                        <div class="col-md-11">
                                            <div class="col-md-12 styleForDateInMessage">13:07</div>
                                            <div class="col-md-12">
                                                <p class="text-justify">Таким образом реализация намеченных плановых
                                                    заданий требуют определения и уточнения форм развития. Не следует,
                                                    однако забывать, что новая модель организационной деятельности в
                                                    значительной степени обуславливает создание модели развития. Не
                                                    следует, однако забывать, что новая модель</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 paddingLeft0 paddingRight0">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Сообщение...">
                                    <span class="input-group-btn">
						               		<button class="btn btn-default">Отправить</button>
										</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- COLLEGS CONTENT -->
<div id="myCollegsContent">
    <div class="container">
        <section>
            <div class="row">
                <div class="col-xs-12 col-md-4">
                    <form class="form-search">
                        <div class="row">
                            <div class="col-xs-12 col-md-10" style="padding-bottom: 10px;">
                                <input type="text" class="input-medium search-query searchPanel"
                                       placeholder="поиск преподователя" style="width: 85%;">
                                <button type="submit" class="btn buttonForSearchPanel"><img
                                        src="/res/images/icons/search2.png"></button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-4"></div>
                <div class="col-xs-12 col-md-4 searchOption" style="text-align: center;">
                    Сортировать по
                    <select name="sortBy" class="selectpicker">
                        <option value="rating" selected="">рейтингу</option>
                        <option value="cheap">стоимости (сначала дешевые)</option>
                        <option value="expensive">стоимости (сначала дорогие)</option>
                    </select>
                </div>
            </div>
        </section>

        <div class="row">
            <aside class="col-xs-12 col-md-3">
                <div style="padding-bottom: 10px;">
                    <h4><strong>Преподает</strong></h4>
                    <select name="allLanguages" class="selectpicker" style="border: 1px solid #DBDBDB;">
                        <option value="0">Выберите язык</option>
                        <option value="1">Азербайджанский</option>
                        <option value="2">Албанский</option>
                        <option value="3">Армянский</option>
                        <option value="4">Африкаанс</option>
                        <option value="5">Баскский</option>
                        <option value="6">Белорусский</option>
                        <option value="7">Болгарский</option>
                        <option value="8">Вьетнамский</option>
                        <option value="9">Голландский</option>
                        <option value="10">Греческий</option>
                        <option value="11">Гельский</option>
                        <option value="12">Датский</option>
                        <option value="13">Иврит</option>
                        <option value="14">Игбо</option>
                        <option value="15">Индонезийский</option>
                        <option value="16">Исландский</option>
                        <option value="17">Испанский</option>
                        <option value="18">Кантонский</option>
                        <option value="19">Корейский</option>
                        <option value="20">Латинский</option>
                        <option value="21">Латышский</option>
                        <option value="22">Литовский</option>
                        <option value="23">Монгольский</option>
                        <option value="23">Непальский</option>
                        <option value="24">Норвежский</option>
                        <option value="25">Персидский(фарси</option>
                        <option value="26">Польский</option>
                        <option value="27">Румынский</option>
                        <option value="28">Русский</option>
                        <option value="29">Сербский</option>
                        <option value="30">Словацкий</option>
                        <option value="31">Словенский</option>
                        <option value="32">Татарский</option>
                        <option value="33">Тайский</option>
                        <option value="34">Турецкий</option>
                        <option value="35">Туркменский</option>
                        <option value="36">Украинский</option>
                        <option value="37">Урду</option>
                        <option value="38">Финский</option>
                        <option value="39">Хинди</option>
                        <option value="40">Хорватский</option>
                        <option value="41">Чешский</option>
                        <option value="42">Шведский</option>
                    </select>
                </div>

                <div style="padding-bottom: 10px;">
                    <h4><strong>Говорит на</strong></h4>
                    <div style="width:100%; height:90px; overflow:auto; padding-left: 10px;">
                        <input type="checkbox">Азербайджанский<br>
                        <input type="checkbox">Албанский<br>
                        <input type="checkbox">Армянский<br>
                        <input type="checkbox">Африкаанс<br>
                        <input type="checkbox">Баскский<br>
                        <input type="checkbox">Белорусский<br>
                        <input type="checkbox">Болгарский<br>
                        <input type="checkbox">Вьетнамский<br>
                        <input type="checkbox">Голландский<br>
                        <input type="checkbox">Греческий<br>
                        <input type="checkbox">Гельский<br>
                        <input type="checkbox">Датский<br>
                        <input type="checkbox">Иврит<br>
                        <input type="checkbox">Игбо<br>
                        <input type="checkbox">Индонезийский<br>
                        <input type="checkbox">Исландский<br>
                        <input type="checkbox">Испанский<br>
                        <input type="checkbox">Кантонский<br>
                        <input type="checkbox">Корейский<br>
                        <input type="checkbox">Латинский<br>
                        <input type="checkbox">Латышский<br>
                        <input type="checkbox">Литовский<br>
                        <input type="checkbox">Монгольский<br>
                        <input type="checkbox">Непальский<br>
                        <input type="checkbox">Норвежский<br>
                        <input type="checkbox">Персидский<br>
                        <input type="checkbox">Польский<br>
                        <input type="checkbox">Румынский<br>
                        <input type="checkbox">Русский<br>
                        <input type="checkbox">Сербский<br>
                        <input type="checkbox">Словацкий<br>
                        <input type="checkbox">Словенский<br>
                        <input type="checkbox">Татарский<br>
                        <input type="checkbox">Тайский<br>
                        <input type="checkbox">Турецкий<br>
                        <input type="checkbox">Украинский<br>
                        <input type="checkbox">Урду<br>
                        <input type="checkbox">Финский<br>
                        <input type="checkbox">Хинди<br>
                        <input type="checkbox">Хорватский<br>
                        <input type="checkbox">Чешский<br>
                        <input type="checkbox">Шведский<br>
                    </div>
                </div>

                <div style="padding-bottom: 10px;">
                    <input type="checkbox"><span class="h4"
                                                 style="padding-left: 5px;"><strong>Носитель языка</strong></span>
                </div>

                <div style="padding-bottom: 10px;">
                    <h4><strong>Местонахождение</strong></h4>
                    <select name="allLanguages" class="selectpicker" style="border: 1px solid #DBDBDB;">
                        <option value="0">Страны</option>
                        <option value="1">Азербайджан</option>
                        <option value="2">Албания</option>
                        <option value="3">Армения</option>
                        <option value="4">Австралия</option>
                        <option value="5">Азербайджан</option>
                        <option value="6">Беларусь</option>
                        <option value="7">Болгария</option>
                        <option value="8">Бразилия</option>
                        <option value="9">Вьетнам</option>
                        <option value="10">Германия</option>
                        <option value="11">Голландия</option>
                        <option value="12">Греция</option>
                        <option value="13">Израиль</option>
                        <option value="14">Индия</option>
                        <option value="15">Иран</option>
                        <option value="16">Исландия</option>
                        <option value="17">Казахстан</option>
                        <option value="18">Испания</option>
                        <option value="19">Корея</option>
                        <option value="20">Латвия</option>
                        <option value="21">Литва</option>
                        <option value="22">Монголия</option>
                        <option value="23">Непал</option>
                        <option value="23">Норвегия</option>
                        <option value="24">Польша</option>
                        <option value="25">Португалия</option>
                        <option value="26">Румыния</option>
                        <option value="27">Сербия</option>
                        <option value="28">Россия</option>
                        <option value="29">Сингапур</option>
                        <option value="30">Словакия</option>
                        <option value="31">Словения</option>
                        <option value="32">США</option>
                        <option value="33">Таиланд</option>
                        <option value="34">Турция</option>
                        <option value="35">Украина</option>
                        <option value="36">Финляндия</option>
                        <option value="37">Финский</option>
                        <option value="38">Хорватия</option>
                        <option value="39">Чехия</option>
                        <option value="40">Швеция</option>
                        <option value="41">Швейцария</option>
                    </select>
                </div>

                <div>
                    <a id="openCloseParametr" href="#"><h4>Дополнительные параметры</h4></a>
                    <div id="blockParametr">
                        <div>
                            <h4><strong>Цена урока</strong></h4>
                            <div class="radio">
                                <label><input type="radio" name="priceRadio">1 - 10$</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="priceRadio">10 - 20$</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="priceRadio">20 - 30$</label>
                            </div>
                        </div>

                        <div style="padding-bottom: 10px;">
                            <h4><strong>Подготовка к экзаменам</strong></h4>
                            <div style="width:100%; height:90px; overflow:auto; padding-left: 10px;">
                                <input type="checkbox">IELTS<br>
                                <input type="checkbox">TOEFL<br>
                                <input type="checkbox">ЦТ<br>
                                <input type="checkbox">ЕГЭ<br>
                            </div>
                        </div>

                        <div style="padding-bottom: 10px;">
                            <h4><strong>Спец.компетенции</strong></h4>
                            <div style="width:100%; height:90px; overflow:auto; padding-left: 10px;">
                                <input type="checkbox">занятия с детьми<br>
                                <input type="checkbox">занятия с подростками<br>
                                <input type="checkbox">бизнес-коммуникация<br>
                                <input type="checkbox">обучение новичков<br>
                            </div>
                        </div>
                    </div>

                    <div style="text-align: center;">
                        <img src="/res/images/buttons/btnShow.png" class="btn" id="btnShow">
                    </div>
                </div>
            </aside>

            <%--<section class="col-xs-12 col-md-9">--%>
                <%--<!-- 1 card of teacher -->--%>
                <%--<div class="row"--%>
                     <%--style="height: 200px; border-top: 1px solid #DBDBDB; padding-bottom: 10px; margin-bottom: 10px;">--%>
                    <%--<div class="col-xs-5 col-md-2" style="padding-top: 20px;">--%>
                        <%--<div style="text-align: center;">--%>
                            <%--<a href="/show_profile" title="Перейти на профиль"><img--%>
                                    <%--src="/resources/images/teacher/teacher1.png"></a>--%>
                            <%--<a href="#" title="Показать видео" id="video"><img--%>
                                    <%--src="/resources/images/icons/playVideo.png"--%>
                                    <%--style="position: relative; left: -20px; top: -22px;"></a>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="modal fade" id="videoModal" role="dialog">--%>
                        <%--<div class="modal-dialog">--%>
                            <%--<!-- teacher Modal video-->--%>
                            <%--<div class="modal-content">--%>
                                <%--<iframe width="590" height="320" src="https://www.youtube.com/embed/vVUViVOO1lQ?rel=0"--%>
                                        <%--frameborder="0" allowfullscreen>--%>
                                <%--</iframe>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="modal fade" id="payModal" role="dialog">--%>
                        <%--<div class="modal-dialog">--%>
                            <%--<!-- teacher Modal payment-->--%>
                            <%--<div class="modal-content">--%>
                                <%--<iframe frameborder="0" allowtransparency="true" scrolling="no"--%>
                                        <%--src="https://money.yandex.ru/quickpay/shop-widget?account=410012266760751&quickpay=shop&payment-type-choice=on&mobile-payment-type-choice=on&writer=seller&targets=%D0%97%D0%B0+%D1%83%D1%80%D0%BE%D0%BA+1+%D1%83%D1%80%D0%BE%D0%BA&targets-hint=&default-sum=560&button-text=01&fio=on&mail=on&successURL="--%>
                                        <%--width="450" height="198">--%>
                                <%--</iframe>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="col-xs-12 col-md-6" style="padding-top: 15px;">--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-xs-9 col-md-10">--%>
                                <%--<p style="font-size: 25px"> Cameron Diaz <span>:flag:</span></p>--%>
                            <%--</div>--%>
                            <%--<div class="col-xs-3 col-md-2">--%>
                                <%--<a href="#"><img src="/resources/images/icons/calendar2.png" id="calendar" ></a>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <%--<p><b>преподает: <span style="color: #3E9DD7;">английский</span> (родной язык)<br>--%>
                            <%--говорит на: <span style="color: #3E9DD7;">английский, русский, чешский</span><br></b>--%>
                            <%--<span style="font-size: 12px; font-weight: 100; color: #9D9D9D">A lazy, incompetent middle school teacher who hates her job,--%>
								<%--her students, and her co-workers is forced to return to teaching to make--%>
								<%--enough money for breast implants after her wealthy fiancé dumps her. </span>--%>
                        <%--</p>--%>
                        <%--<p><b><span style="padding: 4px; background-color: #BABBDF">IELTS</span>--%>
                            <%--<span style="padding: 4px; background-color: #BABBDF">English for lawyers</span>--%>
                            <%--<span style="padding: 4px; background-color: #BABBDF">Business communication</span></b></p>--%>
                    <%--</div>--%>

                    <%--<div class="col-xs-12 col-md-4" style="padding-top: 20px; text-align: center;">--%>
                        <%--<div class="row">--%>
                            <%--<div id="reviewStars-input" style="padding-bottom: 10px;" class="col-xs-12 col-md-12">--%>
                                <%--<input id="star-4" type="radio" name="reviewStars">--%>
                                <%--<label title="отлично" for="star-4"></label>--%>

                                <%--<input id="star-3" type="radio" name="reviewStars">--%>
                                <%--<label title="хорошо" for="star-3"></label>--%>

                                <%--<input id="star-2" type="radio" name="reviewStars">--%>
                                <%--<label title="нормально" for="star-2"></label>--%>

                                <%--<input id="star-1" type="radio" name="reviewStars">--%>
                                <%--<label title="плохо" for="star-1"></label>--%>

                                <%--<input id="star-0" type="radio" name="reviewStars">--%>
                                <%--<label title="ужасно" for="star-0"></label>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <%--<p><span style="font-size: 12px; font-weight: 100; color: #9D9D9D">цена урока</span><b> 10 $ ---%>
                            <%--12 $</b></p>--%>
                        <%--<h4 style="color: #1C3075;">бесплатный пробный<br> урок (30 мин)</h4>--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-xs-4 col-md-4"><a href="#" id="pay" title="Оплатить">--%>
                                <%--<img src="/resources/images/icons/pay.png" class="btn" title="pay"></a>--%>
                            <%--</div>--%>
                            <%--<div class="col-xs-2 col-md-2"><img src="/resources/images/icons/skype.png" class="btn"--%>
                                                                <%--title="skype"></div>--%>
                            <%--<div class="col-xs-2 col-md-2"><a href="#" id="newMess" title="Новое сообщение">--%>
                                <%--<img src="/resources/images/icons/chat.png" class="btn"></a>--%>
                            <%--</div>--%>

                            <%--<!-- Modal for teacher-->--%>
                            <%--<div class="modal fade" id="messModal" role="dialog">--%>
                                <%--<div class="modal-dialog">--%>
                                    <%--<!-- teacher Modal content-->--%>
                                    <%--<div class="modal-content">--%>
                                        <%--<div class="modal-header modalHeaderStyle">--%>
                                            <%--<p class="text-center fontSize30px">Написать сообщение преподователю</p>--%>
                                        <%--</div>--%>
                                        <%--<div class="modal-body modalBodyStyle">--%>
                                            <%--<form action="/send_mssg" role="form" method="POST"--%>
                                                  <%--modelattribute="sendMessage">--%>
                                                <%--<div class="form-group">--%>
                                                    <%--<input type="text" class="form-control" name="message" id="messText"--%>
                                                           <%--placeholder="ваше сообщение" required>--%>
                                                <%--</div>--%>
                                                <%--<input type="hidden" name="idTeacher" value="2/">--%>
                                                <%--<input type="hidden" name="date" value="2222/">--%>
                                                <%--<input type="hidden" name="username" value="VovaVovaVoava/">--%>
                                                <%--<input type="hidden" name="idStudent" value="1/">--%>
                                                <%--<input type="hidden" name="img" value="teacher4.png">--%>
                                                <%--<button type="submit" class="btn btn-block btnBlack">Отправить сообщение--%>
                                                <%--</button>--%>
                                            <%--</form>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<!-- 2 card of teacher -->--%>

            <%--</section>--%>
            <%@ include file="../include/search_result.jsp" %>
        </div>
    </div>
</div>

<!-
<!-- CALENDARS CONTENT -->
<div id="myCalendarContent">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 myCalendarContentStyle paddingTop15px">
                <div class="col-md-2 text-left"><img src="/res/images/icons/calendarLeftArrowButton.png"
                                                     class="btn padding0" id="calendarLeftArrowButton"
                                                     onclick="previousWeek()"></div>
                <div class="col-md-8 text-center fontSize24px"><span id="dateForCalendar"></span> - <span
                        id="dateForCalendar2"></span></div>
                <div class="col-md-2 text-right"><img src="/res/images/icons/calendarRightArrowButton.png"
                                                      class="btn padding0" id="calendarRightArrowButton"
                                                      onclick="nextWeek()"></div>
            </div>
            <div class="col-md-8 col-md-offset-2 myCalendarContentStyle">
                <!-- <div class="container"> -->
                <div class="row">
                    <div class="col-md-12 paddingBottom18px">
                        <div class="col-md-1 text-center headerBoxesForCalendar"></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>пн</p><span
                                class="smallDateColorForCalendar" id="monday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>вт</p><span
                                class="smallDateColorForCalendar" id="tuesday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>ср</p><span
                                class="smallDateColorForCalendar" id="wednesday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>чт</p><span
                                class="smallDateColorForCalendar" id="thursday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>пт</p><span
                                class="smallDateColorForCalendar" id="friday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>сб</p><span
                                class="smallDateColorForCalendar" id="saturday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>вс</p><span
                                class="smallDateColorForCalendar" id="sunday"></span></div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">10:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="10_monday" data-toggle="modal" data-target="#modalConfirmReservation"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="10_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="10_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="10_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="10_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="10_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="10_sunday"></div>

                            <!-- <button class="btn btn-info btn-lg" type="button" data-toggle="modal" data-target="#myModal">Показать всплывающее окно</button> -->
                            <!-- <div id="modalConfirmReservation" class="modal fade" tabindex="-1">
                                <div class="modal-dialog modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title"><strong>Дата:</strong><span id="modalConfirmSelectedDate"></span></h4>
                                        </div>
                                        <div class="modal-body">Текст уведомления</div>
                                        <div class="modal-footer"><button class="btn btn-default" type="button" data-dismiss="modal">Закрыть</button></div>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">11:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="11_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="11_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="11_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="11_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="11_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="11_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="11_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">12:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="12_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="12_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="12_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="12_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="12_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="12_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="12_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">13:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="13_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="13_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="13_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="13_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="13_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="13_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="13_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">14:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="14_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="14_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="14_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="14_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="14_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="14_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="14_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">15:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="15_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="15_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="15_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="15_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="15_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="15_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="15_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">16:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="16_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="16_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="16_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="16_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="16_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="16_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="16_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">17:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="17_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="17_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="17_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="17_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="17_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="17_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="17_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">18:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">19:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">20:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="20_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="20_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="20_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="20_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="20_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="20_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="20_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">21:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="21_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="21_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="21_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="21_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="21_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="21_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="21_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">22:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_sunday"></div>
                        </div>
                    </div>
                </div>
                <!-- </div> -->
            </div>
            <div class="col-md-8 col-md-offset-2 text-right myCalendarContentStyle paddingTop15px">
                <p class="btn" onclick="editCalendar()">Редактировать календарь</p>
            </div>
        </div>
    </div>
</div>

<!-- EDIT CALENDARS CONTENT -->
<div id="editMyCalendarContent">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <p class="h3">Редактирование личного расписания</p>
            </div>
            <div class="col-md-8 col-md-offset-2 myCalendarContentStyle paddingTop15px">
                <div class="col-md-2 text-left"><img src="/res/images/icons/calendarLeftArrowButton.png"
                                                     class="btn padding0" id="calendarLeftArrowButton"
                                                     onclick="previousWeekEdit()"></div>
                <div class="col-md-8 text-center fontSize24px"><span id="dateForCalendar"></span> - <span
                        id="dateForCalendar2"></span></div>
                <div class="col-md-2 text-right"><img src="/res/images/icons/calendarRightArrowButton.png"
                                                      class="btn padding0" id="calendarRightArrowButton"
                                                      onclick="nextWeekEdit()"></div>
            </div>
            <div class="col-md-8 col-md-offset-2 myCalendarContentStyle">
                <!-- <div class="container"> -->
                <div class="row">
                    <div class="col-md-12 paddingBottom18px">
                        <div class="col-md-1 text-center headerBoxesForCalendar"></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>пн</p><span
                                class="smallDateColorForCalendar" id="monday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>вт</p><span
                                class="smallDateColorForCalendar" id="tuesday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>ср</p><span
                                class="smallDateColorForCalendar" id="wednesday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>чт</p><span
                                class="smallDateColorForCalendar" id="thursday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>пт</p><span
                                class="smallDateColorForCalendar" id="friday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>сб</p><span
                                class="smallDateColorForCalendar" id="saturday"></span></div>
                        <div class="col-md-1 text-center boxesForCalendar"><p>вс</p><span
                                class="smallDateColorForCalendar" id="sunday"></span></div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">00:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="00_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="00_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="00_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="00_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="00_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="00_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="00_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">01:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="01_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="01_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="01_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="01_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="01_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="01_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="01_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">02:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">02:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="02_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">03:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="03_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="03_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="03_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="03_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="03_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="03_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="03_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">04:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="04_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="04_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="04_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="04_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="04_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="04_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="04_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">05:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="05_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="05_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="05_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="05_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="05_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="05_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="05_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">06:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="06_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="06_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="06_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="06_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="06_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="06_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="06_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">07:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="07_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="07_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="07_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="07_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="07_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="07_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="07_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">08:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="08_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="08_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="08_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="08_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="08_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="08_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="08_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">09:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="09_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="09_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="09_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="09_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="09_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="09_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="09_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">10:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="10_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="10_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="10_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="10_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="10_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="10_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="10_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">11:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="11_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="11_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="11_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="11_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="11_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="11_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="11_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">12:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="12_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="12_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="12_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="12_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="12_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="12_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="12_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">13:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="13_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="13_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="13_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="13_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="13_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="13_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="13_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">14:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="14_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="14_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="14_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="14_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="14_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="14_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="14_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">15:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="15_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="15_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="15_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="15_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="15_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="15_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="15_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">16:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="16_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="16_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="16_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="16_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="16_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="16_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="16_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">17:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="17_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="17_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="17_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="17_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="17_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="17_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="17_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">18:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="18_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">19:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="19_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">20:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="20_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="20_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="20_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="20_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="20_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="20_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="20_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">21:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="21_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="21_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="21_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="21_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="21_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="21_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar"
                                 id="21_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">22:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="22_sunday"></div>
                        </div>
                    </div>
                    <div class="col-md-12 lineHeightForBoxes">
                        <div class="col-md-1 text-center headerBoxesForCalendar">23:00</div>
                        <div onclick="onClickOnField()">
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="23_monday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="23_tuesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="23_wednesday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="23_thursday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="23_friday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="23_saturday"></div>
                            <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                 id="23_sunday"></div>
                        </div>
                    </div>
                </div>
                <!-- </div> -->
            </div>
            <div class="col-md-8 col-md-offset-2 text-center myCalendarContentStyle paddingTop15px">
                <button class="btn" id="saveButton">Сохранить изменения</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/content.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/time.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/menu.js"></script>
</body>
</html>