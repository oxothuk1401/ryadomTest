<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <title>LETSSTUDY поиск преподователя</title>


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

    <link rel="stylesheet" type="text/css" href="/resources/css/search.css">
</head>
<body>
<div class="container">
    <header class="marginBottom">
        <div class="row">
            <div class="h1 col-xs-12 col-md-3"><strong><a href="/">LETSSTUDY</a></strong></div>
            <div class="h1 col-xs-12 col-md-6" style="font-size: 25px;">
                <a href="/find/teacher">
                    <img src="/resources/images/icons/search.png">
                    поиск преподователя
                </a>
            </div>

            <div class="h1 col-xs-12 col-md-3 centered">
                <%--<sec:authorize access="hasRole{'ROLE_ADMIN'}">--%>
                <div class="row">
                    <a href="#"><img class="col-xs-3 col-md-3" src="/resources/images/icons/calendar.png"></a>
                    <a href="#"><img class="col-xs-3 col-md-3" src="/resources/images/icons/notice.png"></a>
                    <a href="#"><img class="col-xs-3 col-md-3" src="/resources/images/icons/message.png"></a>
                    <a href="#"><img class="col-xs-3 col-md-3" src="/resources/images/icons/accaunt.png"></a>
                </div>
                <%--</sec:authorize>--%>
            </div>
        </div>
    </header>

    <div id="mainContent" name="mainContent">

        <section>
            <div class="row">
                <div class="col-xs-12 col-md-4">
                    <form class="form-search">
                        <div class="row">
                            <div class="col-xs-12 col-md-10" style="padding-bottom: 10px;">
                                <input type="text" class="input-medium search-query searchPanel"
                                       placeholder="поиск преподователя" style="width: 85%;">
                                <a href="#"><img src="/resources/images/icons/search2.png"></a>
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
                <form action="/teacher-filter" method="POST">

                    <div style="padding-bottom: 10px;">
                        <h4><strong>Преподает</strong></h4>
                        <select name="teachingLanguage" class="selectpicker" style="border: 1px solid #DBDBDB;">
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
                    </div>

                    <%--<div style="padding-bottom: 10px;">--%>
                    <%--<h4><strong>Говорит на</strong></h4>--%>
                    <%--<div style="width:100%; height:90px; overflow:auto; padding-left: 10px;">--%>
                    <%--<input type="checkbox">Азербайджанский<br>--%>
                    <%--<input type="checkbox">Албанский<br>--%>
                    <%--<input type="checkbox">Армянский<br>--%>
                    <%--<input type="checkbox">Африкаанс<br>--%>
                    <%--<input type="checkbox">Баскский<br>--%>
                    <%--<input type="checkbox">Белорусский<br>--%>
                    <%--<input type="checkbox">Болгарский<br>--%>
                    <%--<input type="checkbox">Вьетнамский<br>--%>
                    <%--<input type="checkbox">Голландский<br>--%>
                    <%--<input type="checkbox">Греческий<br>--%>
                    <%--<input type="checkbox">Гельский<br>--%>
                    <%--<input type="checkbox">Датский<br>--%>
                    <%--<input type="checkbox">Иврит<br>--%>
                    <%--<input type="checkbox">Игбо<br>--%>
                    <%--<input type="checkbox">Индонезийский<br>--%>
                    <%--<input type="checkbox">Исландский<br>--%>
                    <%--<input type="checkbox">Испанский<br>--%>
                    <%--<input type="checkbox">Кантонский<br>--%>
                    <%--<input type="checkbox">Корейский<br>--%>
                    <%--<input type="checkbox">Латинский<br>--%>
                    <%--<input type="checkbox">Латышский<br>--%>
                    <%--<input type="checkbox">Литовский<br>--%>
                    <%--<input type="checkbox">Монгольский<br>--%>
                    <%--<input type="checkbox">Непальский<br>--%>
                    <%--<input type="checkbox">Норвежский<br>--%>
                    <%--<input type="checkbox">Персидский<br>--%>
                    <%--<input type="checkbox">Польский<br>--%>
                    <%--<input type="checkbox">Румынский<br>--%>
                    <%--<input type="checkbox">Русский<br>--%>
                    <%--<input type="checkbox">Сербский<br>--%>
                    <%--<input type="checkbox">Словацкий<br>--%>
                    <%--<input type="checkbox">Словенский<br>--%>
                    <%--<input type="checkbox">Татарский<br>--%>
                    <%--<input type="checkbox">Тайский<br>--%>
                    <%--<input type="checkbox">Турецкий<br>--%>
                    <%--<input type="checkbox">Украинский<br>--%>
                    <%--<input type="checkbox">Урду<br>--%>
                    <%--<input type="checkbox">Финский<br>--%>
                    <%--<input type="checkbox">Хинди<br>--%>
                    <%--<input type="checkbox">Хорватский<br>--%>
                    <%--<input type="checkbox">Чешский<br>--%>
                    <%--<input type="checkbox">Шведский<br>--%>
                    <%--</div>--%>
                    <%--</div>--%>

                    <%--<div style="padding-bottom: 10px;">--%>
                    <%--<input type="checkbox" name="nativeSpeaker"><span class="h4"--%>
                    <%--style="padding-left: 5px;"><strong>Носитель языка</strong></span>--%>
                    <%--</div>--%>

                    <div style="padding-bottom: 10px;">
                        <h4><strong>Местонахождение</strong></h4>
                        <select name="country" class="selectpicker" style="border: 1px solid #DBDBDB;">
                            <option value="" selected>Страны</option>
                            <option value="Азербайджан">Азербайджан</option>
                            <option value="Албания">Албания</option>
                            <option value="Армения">Армения</option>
                            <option value="Австралия">Австралия</option>
                            <option value="Азербайджан">Азербайджан</option>
                            <option value="Беларусь">Беларусь</option>
                            <option value="Болгария">Болгария</option>
                            <option value="Бразилия">Бразилия</option>
                            <option value="Вьетнам">Вьетнам</option>
                            <option value="Германия">Германия</option>
                            <option value="Голландия">Голландия</option>
                            <option value="Греция">Греция</option>
                            <option value="Израиль">Израиль</option>
                            <option value="Индия">Индия</option>
                            <option value="Иран">Иран</option>
                            <option value="Исландия">Исландия</option>
                            <option value="Казахстан">Казахстан</option>
                            <option value="Испания">Испания</option>
                            <option value="Корея">Корея</option>
                            <option value="Латвия">Латвия</option>
                            <option value="Литва">Литва</option>
                            <option value="Монголия">Монголия</option>
                            <option value="Непал">Непал</option>
                            <option value="Норвегия">Норвегия</option>
                            <option value="Польша">Польша</option>
                            <option value="Португалия">Португалия</option>
                            <option value="Румыния">Румыния</option>
                            <option value="Сербия">Сербия</option>
                            <option value="Россия">Россия</option>
                            <option value="Сингапур">Сингапур</option>
                            <option value="Словакия">Словакия</option>
                            <option value="Словения">Словения</option>
                            <option value="США">США</option>
                            <option value="Таиланд">Таиланд</option>
                            <option value="Турция">Турция</option>
                            <option value="Украина">Украина</option>
                            <option value="Финляндия">Финляндия</option>
                            <option value="Финский">Финский</option>
                            <option value="Хорватия">Хорватия</option>
                            <option value="Чехия">Чехия</option>
                            <option value="Швеция">Швеция</option>
                            <option value="Швейцария">Швейцария</option>
                        </select>
                    </div>

                    <div>
                        <a id="openCloseParametr" href="#"><h4>Дополнительные параметры</h4></a>
                        <div id="blockParametr">
                            <div>
                                <h4><strong>Цена урока</strong></h4>
                                <div class="radio">
                                    <label><input type="radio" name="priceForLesson" value="1-50" checked>Любая</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="priceForLesson" value="1-10">1 - 10$</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="priceForLesson" value="10-20">10 - 20$</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="priceForLesson" value="20-30">20 - 30$</label>
                                </div>
                            </div>

                            <div style="padding-bottom: 10px;">
                                <h4><strong>Подготовка к экзаменам</strong></h4>
                                <select name="exam" class="selectpicker" style="border: 1px solid #DBDBDB;">
                                    <option value="" selected>Экзамены</option>
                                    <option value="IELTS">IELTS</option>
                                    <option value="TOEFL">TOEFL</option>
                                    <option value="ЦТ">ЦТ</option>
                                    <option value="ЕГЭ">ЕГЭ</option>
                                </select>
                            </div>
                            <div style="padding-bottom: 10px;">
                                <h4><strong>Спец.компетенции</strong></h4>
                                <select name="competence" class="selectpicker" style="border: 1px solid #DBDBDB;">
                                    <option value="" selected>Спец.компетенции</option>
                                    <option value="занятия с детьми">занятия с детьми</option>
                                    <option value="занятия с подростками">занятия с подростками</option>
                                    <option value="бизнес-коммуникация">бизнес-коммуникация</option>
                                    <option value="обучение новичков">обучение новичков</option>
                                </select>
                            </div>

                        </div>
                        <input type="hidden" name="motherTongue" value="">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <div style="text-align: center;">
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Показать</button>
                        </div>
                    </div>
                </form>
            </aside>

            <section class="col-xs-12 col-md-9">
                <!-- 1 card of teacher -->
                <c:if test="${empty res}">
                    Ничего не найдено
                </c:if>
                <c:forEach items="${res}" var="res">
                    <div class="row"
                         style=" border-top: 1px solid #DBDBDB; padding-bottom: 10px; margin-bottom: 10px;">

                        <div class="col-xs-5 col-md-2" style="padding-top: 20px;">
                            <div style="text-align: center;">
                                <a href="#" title="Перейти на профиль" onclick="teachersPage()"><img
                                        src="/resources/images/teacher/${res.teacherPhoto}"></a>
                                <a href="#" title="Показать видео"
                                   style="position: relative; left: -20px; top: -22px; padding: 0;" data-toggle="modal"
                                   data-target="#modalPlayVideo"><img src="/resources/images/icons/playVideo.png"></a>
                            </div>
                        </div>
                            <%--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$--%>
                        <div id="modalPlayVideo" class="modal fade" tabindex="-1">
                            <div class="modal-dialog modal-sm">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title"><strong>${res.name} ${res.surname}</strong><span
                                                id="modalConfirmSelectedDate"></span></h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="embed-responsive embed-responsive-16by9">
                                            <iframe class="embed-responsive-item"
                                                    src="https://www.youtube.com/embed/oNQWvkEMydo" frameborder="0"
                                                    allowfullscreen></iframe>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button class="btn btn-default" type="button" data-dismiss="modal">Закрыть
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                            <%--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$--%>

                        <div class="col-xs-12 col-md-6" style="padding-top: 15px;">
                            <div class="row">
                                <div class="col-xs-9 col-md-10">
                                    <p style="font-size: 25px"> ${res.name} ${res.surname} <span><img
                                            src="/resources/images/flags/${res.country}.png" alt="flag"></span></p>
                                </div>
                                <div class="col-xs-3 col-md-2">
                                    <img src="/resources/images/icons/calendar2.png" class="btn"
                                         title="открыть календарь">
                                </div>
                            </div>

                            <p><b>преподает: <span style="color: #3E9DD7;">${res.teachingLanguages}</span> (родной
                                язык)<br>
                                говорит на: <span style="color: #3E9DD7;">${res.teachingLanguages}</span><br></b>
                                <span style="font-size: 12px; font-weight: 100; color: #9D9D9D">${res.description} </span>
                            </p>
                            <p>
                                <b>
                                    <span style="padding: 4px; background-color: #BABBDF">${res.preparingExams}</span>

                                    <c:forEach var="spesicalcompetence" items="${res.specialCompetence}">
                                    <span style="padding: 4px; background-color: #BABBDF">${spesicalcompetence.competenceTitle}</span>
                                    </c:forEach>
                                </b>
                            </p>
                        </div>

                        <div class="col-xs-12 col-md-4" style="padding-top: 20px; text-align: center;">
                            <div class="row">
                                <div id="reviewStars-input" style="padding-bottom: 10px;" class="col-xs-12 col-md-12">
                                    <input id="star-4" type="radio" name="reviewStars">
                                    <label title="отлично" for="star-4"></label>

                                    <input id="star-3" type="radio" name="reviewStars">
                                    <label title="хорошо" for="star-3"></label>

                                    <input id="star-2" type="radio" name="reviewStars">
                                    <label title="нормально" for="star-2"></label>

                                    <input id="star-1" type="radio" name="reviewStars">
                                    <label title="плохо" for="star-1"></label>

                                    <input id="star-0" type="radio" name="reviewStars">
                                    <label title="ужасно" for="star-0"></label>
                                </div>
                            </div>

                            <p><span
                                    style="font-size: 12px; font-weight: 100; color: #9D9D9D">цена урока  </span><b>${res.priceForLesson}$</b>
                            </p>
                            <h4 style="color: #1C3075;">бесплатный пробный<br> урок (30 мин)</h4>
                            <div class="row">
                                    <%--<sec:authorize access="hasRole{'ROLE_ADMIN'}">--%>
                                <div class="col-xs-4 col-md-4"></div>
                                <div class="col-xs-2 col-md-2"><img src="/resources/images/icons/skype.png"
                                                                    class="btn"
                                                                    title="skype"></div>
                                <div class="col-xs-2 col-md-2"><a href="#" id="newMess" title="Новое сообщение">
                                    <img src="/resources/images/icons/chat.png" class="btn"></a>
                                </div>
                                    <%--</sec:authorize>--%>
                                <!-- Modal for teacher-->
                                <div class="modal fade" id="messModal" role="dialog">
                                    <div class="modal-dialog">
                                        <!-- teacher Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header modalHeaderStyle">
                                                <p class="text-center fontSize30px">Написать сообщение преподователю</p>
                                            </div>
                                            <div class="modal-body modalBodyStyle">
                                                <form action="/send_mssg" role="form" method="POST"
                                                      modelattribute="sendMessage">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="message"
                                                               id="messText"
                                                               placeholder="ваше сообщение" required>
                                                    </div>
                                                    <button type="submit" class="btn btn-block btnBlack">Отправить
                                                        сообщение
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </section>
        </div>
    </div>

    <footer></footer>

    <div id="teachersPageContent">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-2">
                        <img src="images/teacher/teacher1.png" alt="profile photo" style="width: 165px; padding-top: 15px;">
                        <p class="h4 text-center">online</p>
                    </div>
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-12">
                                <p class="h2" style="padding-top: 20px;"><strong>Cameron Diaz</strong>   <span><img src="images/icons/ratingStarsGold.png" alt="rating icon"></span></p>
                            </div>
                            <div class="col-md-12">
                                <p style="font-size: 20px;"><b>преподает: <span style="color: #3E9DD7;">английский</span> (родной язык)<br>
                                    говорит на: <span style="color: #3E9DD7;">русский</span> (B2), <span style="color: #3E9DD7;">чешский</span> (A2), <span style="color: #3E9DD7;">французский</span> (А2)</b></p>
                            </div>
                            <div class="col-md-12">
                                <img src="images/icons/skype.png" alt="skype icon" class="btn" style="padding: 0; margin-right: 20px;">
                                <img src="images/icons/chat.png" alt="chat icon" class="btn" style="padding: 0; margin-right: 20px;">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 text-right">
                        <div class="row">
                            <div class="col-md-12">
                                <img src="images/flags/usa.png" alt="usa flag" style="padding-top: 40px;">
                            </div>
                            <div class="col-md-12">
                                <p style="padding-top: 10px; color: #828282">Minsk, Belarus <span id="timeAndTimezone"></span></p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-8 text-justify" style="font-size: 20px;">
                    <div class="col-md-12" style="padding-bottom: 20px;">
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/oNQWvkEMydo" frameborder="0" allowfullscreen></iframe>
                        </div>
                    </div>

                    <div class="col-md-12" style="padding-bottom: 20px;" >
                        <p style="color: #338FC7;"><strong>Обо мне</strong></p>
                        <p>A lazy, incompetent middle school teacher who hates her job, her students, and her co-workers is forced to return to teaching to make enough money for breast implants after her wealthy fiancé dumps her. <br>
                            Учительница средних классов живет гламурной жизнью светской львицы, ходит на работу как на вечеринку и мечтает об увеличении объема собственного бюста.
                            Однако после внезапного разрыва с богатым бойфрендом ее образ жизни резко меняется, хотя сама она это осознает не сразу. Но когда в их школу приходит
                            новый преподаватель, она совершенно теряет голову и начинает охоту за… деньгами.</p>
                    </div>

                    <div class="col-md-12" style="padding-bottom: 20px;">
                        <p style="color: #338FC7;"><strong>Специальные компетенции</strong></p>
                        <p>
                            <span style="padding: 4px; background-color: #BABBDF">IELTS</span>
                            <span style="padding: 4px; background-color: #BABBDF">English for lawyers</span>
                            <span style="padding: 4px; background-color: #BABBDF">Business communication</span>
                        </p>
                    </div>

                    <div class="col-md-12" style="padding-bottom: 20px;" >
                        <p style="color: #338FC7;"><strong>Опыт работы</strong></p>
                        <p>
                            <strong>Online English TeacherEnglishtown</strong><br>
                            2013 - 2014  Port Elizabeth ЮАРI taught English to students from all over the world in an online platform. I taught general English grammar, conversational lessons and I also taught specialist areas such as business English and test preparation. I have taught children, teenagers and adults.<br>
                            <strong>Online English TeacherEnglishup</strong><br>
                            2014 - 2015  Port Elizabeth ЮАРI taught English in an online platform to students from Brazil. I taught English grammar lessons, conversation lessons as well as business English. I taught people from all walks of life from ordinary people to business executives.
                        </p>
                    </div>

                    <div class="col-md-12" style="padding-bottom: 20px;" >
                        <p style="color: #338FC7;"><strong>Образование</strong></p>
                        <div class="col-md-3 text-left" style="padding-left: 0;"><p>2009 - 2012</p></div>
                        <div class="col-md-9"><p>Бакалавр - Psychology<br> Nelson Mandela Metropolitan University</p></div>
                    </div>

                    <div class="col-md-12" style="padding-bottom: 20px;" >
                        <p style="color: #338FC7;"><strong>Расписание </strong></p>
                        <div>
                            <!-- CALENDARS CONTENT -->
                            <div id="myCalendarContent">
                                <!-- <div class="container"> -->
                                <div class="row">
                                    <div class="col-md-12 myCalendarContentStyle paddingTop15px">
                                        <div class="col-md-2 text-left"><img src="images/icons/calendarLeftArrowButton.png" class="btn padding0" id="calendarLeftArrowButton" onclick="previousWeek()"></div>
                                        <div class="col-md-8 text-center fontSize24px"><span id="dateForCalendar"></span> - <span id="dateForCalendar2"></span></div>
                                        <div class="col-md-2 text-right"><img src="images/icons/calendarRightArrowButton.png" class="btn padding0" id="calendarRightArrowButton" onclick="nextWeek()"></div>
                                    </div>
                                    <div class="col-md-12 myCalendarContentStyle">
                                        <!-- <div class="container"> -->
                                        <div class="row">
                                            <div class="col-md-12 paddingBottom18px">
                                                <div class="col-md-1 text-center headerBoxesForCalendar" style="width: 80px;"></div>
                                                <div class="col-md-1 text-center boxesForCalendar" style="width: 80px;"><p>пн</p><span class="smallDateColorForCalendar" id="monday"></span></div>
                                                <div class="col-md-1 text-center boxesForCalendar" style="width: 80px;"><p>вт</p><span class="smallDateColorForCalendar" id="tuesday"></span></div>
                                                <div class="col-md-1 text-center boxesForCalendar" style="width: 80px;"><p>ср</p><span class="smallDateColorForCalendar" id="wednesday"></span></div>
                                                <div class="col-md-1 text-center boxesForCalendar" style="width: 80px;"><p>чт</p><span class="smallDateColorForCalendar" id="thursday"></span></div>
                                                <div class="col-md-1 text-center boxesForCalendar" style="width: 80px;"><p>пт</p><span class="smallDateColorForCalendar" id="friday"></span></div>
                                                <div class="col-md-1 text-center boxesForCalendar" style="width: 80px;"><p>сб</p><span class="smallDateColorForCalendar" id="saturday"></span></div>
                                                <div class="col-md-1 text-center boxesForCalendar" style="width: 80px;"><p>вс</p><span class="smallDateColorForCalendar" id="sunday"></span></div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">10:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" style="width: 80px;" id="10_monday" data-toggle="modal" data-target="#modalConfirmReservation"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" style="width: 80px;" id="10_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" style="width: 80px;" id="10_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" style="width: 80px;" id="10_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" style="width: 80px;" id="10_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" style="width: 80px;" id="10_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" style="width: 80px;" id="10_sunday"></div>

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
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_sunday"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">12:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_sunday"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">13:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_sunday"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">14:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_sunday"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">15:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_sunday"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">16:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_sunday"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">17:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_sunday"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">18:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_sunday"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">19:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_sunday"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">20:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_sunday"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">21:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_sunday"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 lineHeightForBoxes">
                                                <div class="col-md-1 text-center headerBoxesForCalendar">22:00</div>
                                                <div onclick="onClickOnField()">
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_monday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_tuesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_wednesday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_thursday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_friday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_saturday"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_sunday"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- </div> -->
                                    </div>
                                    <div class="col-md-12 text-right myCalendarContentStyle paddingTop15px">
                                        <p class="btn">Редактировать календарь</p>
                                    </div>
                                </div>
                                <!-- </div> -->
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" id="wrap">
                    <div id="aside">
                        <div class="col-md-12 text-center" style="padding-bottom: 20px;">
                            <p class="h3" style="padding: 15px 0;">Доступен <strong>бесплатный</strong> пробный урок (30 мин)</p>
                            <button class="btn" style="font-size: 30px; color: #FFFFFF; background-color: #EA384E;">получить</button>
                        </div>
                        <div class="col-md-12 text-center">
                            <p class="h3"><strong>Цена урока</strong></p>
                            <p class="h3 text-left"><img src="images/icons/package1.png" alt="number 1"> урок - <strong>10$</strong></p>
                            <p class="h3 text-left"><img src="images/icons/package5.png" alt="number 5"> уроков (пакет) - <strong>45$</strong></p>
                            <p class="h3 text-left"><img src="images/icons/package10.png" alt="number 10"> уроков (пакет) - <strong>80$</strong></p>
                            <button class="btn" style="font-size: 30px; color: #FFFFFF; background-color: #EA384E; margin-top: 15px;">купить урок</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>





<%--<div id="teachersPageContent">--%>
                <%--<div class="container">--%>
                <%--<div class="row">--%>
                <%--<div class="col-md-12">--%>
                <%--<div class="col-md-2">--%>
                <%--<img src="/resources/images/teacher/${res.teacherPhoto}" alt="profile photo" style="width: 165px; padding-top: 15px;">--%>
                <%--</div>--%>
                <%--<div class="col-md-7">--%>
                <%--<div class="row">--%>
                <%--<div class="col-md-12">--%>
                <%--<p class="h2" style="padding-top: 20px;"><strong>${res.name} ${res.surname}</strong>   <span><img src="/resources/images/icons/ratingStarsGold.png" alt="rating icon"></span></p>--%>
                <%--</div>--%>
                <%--<div class="col-md-12">--%>
                <%--<p style="font-size: 20px;"><b>преподает: <span style="color: #3E9DD7;">английский</span> (родной язык)<br>--%>
                <%--говорит на: <span style="color: #3E9DD7;">русский</span> (B2), <span style="color: #3E9DD7;">чешский</span> (A2), <span style="color: #3E9DD7;">французский</span> (А2)</b></p>--%>
                <%--</div>--%>
                <%--<div class="col-md-12">--%>
                <%--<img src="/resources/images/icons/skype.png" alt="skype icon" class="btn" style="padding: 0; margin-right: 20px;">--%>
                <%--<img src="/resources/images/icons/chat.png" alt="chat icon" class="btn" style="padding: 0; margin-right: 20px;">--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-3 text-right">--%>
                <%--<div class="row">--%>
                <%--<div class="col-md-12">--%>
                <%--<img src="/resources/images/flags/${res.country}.png" alt="usa flag" style="padding-top: 40px;">--%>
                <%--</div>--%>
                <%--<div class="col-md-12">--%>
                <%--<p style="padding-top: 10px; color: #828282">${res.city}, ${res.country} <span id="timeAndTimezone"></span></p>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--</div>--%>

                <%--<div class="col-md-8 text-justify" style="font-size: 20px;">--%>
                <%--<div class="col-md-12" style="padding-bottom: 20px;">--%>
                <%--<div class="embed-responsive embed-responsive-16by9">--%>
                <%--<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/oNQWvkEMydo" frameborder="0" allowfullscreen></iframe>--%>
                <%--</div>--%>
                <%--</div>--%>

                <%--<div class="col-md-12" style="padding-bottom: 20px;" >--%>
                <%--<p style="color: #338FC7;"><strong>Обо мне</strong></p>--%>
                <%--<p>${res.description}<br>--%>
                <%--Учительница средних классов живет гламурной жизнью светской львицы, ходит на работу как на вечеринку и мечтает об увеличении объема собственного бюста.--%>
                <%--Однако после внезапного разрыва с богатым бойфрендом ее образ жизни резко меняется, хотя сама она это осознает не сразу. Но когда в их школу приходит--%>
                <%--новый преподаватель, она совершенно теряет голову и начинает охоту за… деньгами.</p>--%>
                <%--</div>--%>

                <%--<div class="col-md-12" style="padding-bottom: 20px;">--%>
                <%--<p style="color: #338FC7;"><strong>Специальные компетенции</strong></p>--%>
                <%--<p>--%>
                <%--<span style="padding: 4px; background-color: #BABBDF">${res.preparingExams}</span>--%>
                <%--<span style="padding: 4px; background-color: #BABBDF">${res.specialCompetence}</span>--%>
                <%--</p>--%>
                <%--</div>--%>

                <%--<div class="col-md-12" style="padding-bottom: 20px;" >--%>
                <%--<p style="color: #338FC7;"><strong>Опыт работы</strong></p>--%>
                <%--<p>--%>
                <%--<strong>Online English TeacherEnglishtown</strong><br>--%>
                <%--2013 - 2014  Port Elizabeth ЮАРI taught English to students from all over the world in an online platform. I taught general English grammar, conversational lessons and I also taught specialist areas such as business English and test preparation. I have taught children, teenagers and adults.<br>--%>
                <%--<strong>Online English TeacherEnglishup</strong><br>--%>
                <%--2014 - 2015  Port Elizabeth ЮАРI taught English in an online platform to students from Brazil. I taught English grammar lessons, conversation lessons as well as business English. I taught people from all walks of life from ordinary people to business executives.--%>
                <%--</p>--%>
                <%--</div>--%>

                <%--<div class="col-md-12" style="padding-bottom: 20px;" >--%>
                <%--<p style="color: #338FC7;"><strong>Образование</strong></p>--%>
                <%--<div class="col-md-3 text-left" style="padding-left: 0;"><p>2009 - 2012</p></div>--%>
                <%--<div class="col-md-9"><p>Бакалавр - Psychology<br> Nelson Mandela Metropolitan University</p></div>--%>
                <%--</div>--%>

                <%--<div class="col-md-12" style="padding-bottom: 20px;" >--%>
                <%--<p style="color: #338FC7;"><strong>Расписание </strong></p>--%>
                <%--<div>--%>

                <%--</div>--%>
                <%--</div>--%>
                <%--</div>--%>

                <%--<div class="col-md-4" id="wrap">--%>
                <%--<div id="aside">--%>
                <%--<div class="col-md-12 text-center" style="padding-bottom: 20px;">--%>
                <%--<p class="h3" style="padding: 15px 0;">Доступен <strong>бесплатный</strong> пробный урок (30 мин)</p>--%>
                <%--<button class="btn" style="font-size: 30px; color: #FFFFFF; background-color: #EA384E;">получить</button>--%>
                <%--</div>--%>
                <%--<div class="col-md-12 text-center">--%>
                <%--<p class="h3"><strong>Цена урока</strong></p>--%>
                <%--<p class="h3 text-left"><img src="/resources/images/icons/package1.png" alt="number 1"> урок - <strong>${res.priceForLesson}</strong></p>--%>
                <%--<p class="h3 text-left"><img src="/resources/images/icons/package5.png" alt="number 5"> уроков (пакет) - <strong>${res.priceForComplexLesson}</strong></p>--%>
                <%--<p class="h3 text-left"><img src="/resources/images/icons/package10.png" alt="number 10"> уроков (пакет) - <strong>${res.priceForComplexLesson}*2</strong></p>--%>
                <%--<button class="btn" style="font-size: 30px; color: #FFFFFF; background-color: #EA384E; margin-top: 15px;">купить урок</button>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--</div>--%>

                <%--</div>--%>
                <%--</div>--%>
                <%--</div>--%>


<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/js/search.js"></script>
</body>
</html>