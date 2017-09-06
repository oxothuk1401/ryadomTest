<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0066)http://twitter.github.com/bootstrap/examples/starter-template.html -->
<html lang="en">
<head>
    <title>Landy, simple landing page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="findAllMinsk">
    <meta name="author" content="levkovskii">

    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/switcher.css" rel="stylesheet">
    <link href="/resources/css/count.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/1.7.1/clipboard.min.js"></script>

 	 <link rel="stylesheet" type="text/css" href="css/site.css" />
   	<script type="text/javascript" src="/resources/js/cssrefresh.js"></script>

    <link rel="stylesheet" type="text/css" href="/resources/css/set2.css" />

    <style>


        .main-menu {

            list-style: none;
        }

        .main-menu a {
            display: inline-block;
            margin-bottom: -1px;
            padding: 8px 14px;
            text-decoration: none;
            color: #000000;
            border: 1px solid #e5e5e5;
        }
        .main-menu > li {
                position: relative;
            }



        .main-menu .sub-menu{
                position: absolute;
                top: -4px;
                left:170px;
                z-index: 10;
                display: none;
                width: 40px;
                margin: 0;
                padding: 0;
                list-style: none;
                background: #f7f7f7;
            }
         .sub-menu  .sub-menu2{
            position: absolute;
            top: 0px;
            left: 35px;
            z-index: 10;
            display: none;
            width: 180px;
            margin: 0;
            padding: 0;
            list-style: none;
            background: #f7f7f7;
        }

        .main-menu > li:hover .sub-menu {
            display: inline-block;
        }
        .sub-menu > li:hover .sub-menu2 {
            display: inline-block;
        }
        .box div{display:inline-block}


    </style>
</head>

<body class="navbar">


<%@ include file="include/header.jsp" %>

<!-- Page items -->
<div class="container">
    <%--topCategories--%>

    <div id="topCategories" class="row">
        <br>
        <br>
        <br>

        <div class="hit-the-floor">Самые популярные категории</div>

        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/apteka.png" alt="">    <a href="#"><p class="top12text">Аптеки</p></a>                        </div>
        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/casino.png" alt="">    <a href="#"><p class="top12text">Казино</p></a>               </div>
        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/qiwi.png" alt="">      <a href="#"><p class="top12text">Терминал</p></a>              </div>
        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/taxi.png" alt="">      <a href="#"><p class="top12text">Такси</p></a>             </div>
        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/cveti.png" alt="">     <a href="#"><p class="top12text">Цветы</p></a>             </div>
        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/bankomat.png" alt="">  <a href="#"><p class="top12text">Банкомат</p></a>             </div>
        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/fastfood.png" alt="">     <a href="#"><p class="top12text">FastFood</p></a>             </div>
        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/avto.png" alt="">     <a href="#"><p class="top12text">Авто</p></a>             </div>
        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/hotel.png" alt="">     <a href="#"><p class="top12text">Отели</p></a>             </div>
        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/obmennik.png" alt="">      <a href="#"><p class="top12text">Обменник</p></a>             </div>
        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/shop.png" alt="">      <a href="#"><p class="top12text">Магазины</p></a>             </div>
        <div class="col-md-1 col-xs-3"><img class="img-fluid " src="/resources/img/catigories/food.png" alt="">      <a href="#"><p class="top12text">Еда</p></a>             </div>

    </div>
    <div class="row">
        <aside class="col-xs-12 col-md-2">
            <div class="clearfix" style="height: 10px;"></div>
            <div>
                <a href="http://www.obmennik.by"><img src="http://www.obmennik.by/images/kurs/kursusd88x312.png"></a>
            </div>
            <div class="clearfix" style="height: 10px;"></div>
            <div>
               Сайт посетили уже: <a href="#"><img border="0" src="http://www.warlog.ru/counter/?i=10" alt="счетчик посещений" title="счетчик посещений" /></a> раза.
            </div>
            <div class="clearfix" style="height: 10px;"></div>
            <div class="switcher">
                <input class="switcher__input" checked type="checkbox" name="worksNow" id="worksNow">
                <label class="switcher__label" for="worksNow">
                    <span class="switcher__text"><strong>Работает сейчас</strong></span>
                </label>
            </div>
            <div class="clearfix" style="height: 10px;"></div>
            <div class="switcher">
                <input class="switcher__input" type="checkbox" name="worksAroundTheClock" id="worksAroundTheClock">
                <label class="switcher__label" for="worksAroundTheClock">
                    <span class="switcher__text"><strong>Круглосуточно</strong></span>
                </label>
            </div>
            <div class="clearfix" style="height: 10px;"></div>
            <div>
                <select name="selectArea" class="btn btn-primary btn-block">
                    <option value="" selected>Выберите район</option>
                    <option value="Английский">Новинки</option>
                    <option value="Русский">Веснянка</option>
                    <option value="Азербайджанский">Бульвар</option>
                    <option value="Албанский">СельХозПоселок</option>
                    <option value="Армянский">Бангалор</option>
                    <option value="Африкаанс">Комаровка</option>
                </select>
                <select name="selectStreet" class="btn btn-primary btn-block col-xs-2">
                    <option class="btn-default" value="" selected>Выберите улицу</option>
                    <option class="btn-default" value="Английский">Червякова</option>
                    <option class="btn-default" value="Русский">Хоружей</option>
                    <option class="btn-default" value="Русский">Машерова</option>
                </select>
            </div >

        </aside>

        <section class="col-xs-12 col-md-10 ">
            <%--<div class="box col-xs-1" style="background-color: #0CFF2E">--%>
                <%--<a href="#contact"><i><span class="glyphicon glyphicon-phone-alt"></span></i></a>--%>
                <%--<a href="#contact"><i><span class="glyphicon glyphicon-phone-alt"></span></i></a>--%>
                <%--<a href="#contact"><i><span class="glyphicon glyphicon-phone-alt"></span></i></a>--%>
                <%--<a href="#contact"><i><span class="glyphicon glyphicon-phone-alt"></span></i></a>--%>
                <%--<a href="#contact"><i><span class="glyphicon glyphicon-phone-alt"></span></i></a>--%>
                <%--<a href="#contact"><i><span class="glyphicon glyphicon-phone-alt"></span></i></a>--%>
                <%--<a href="#contact"><i><span class="glyphicon glyphicon-phone-alt"></span></i></a>--%>
                <%--<a href="#contact"><i><span class="glyphicon glyphicon-phone-alt"></span></i></a>--%>
            <%--</div>--%>
            <div class="box">
                <div class="col-md-4">
                    <div class="col-md-4 col-xs-4">
                        <img src="/resources/img/lineline.png" width="91" height="91">
                    </div>
                    <div class="col-md-8 col-xs-8">
                        <strong>Салон красоты</strong><br>
                        ул. Червякова д.8<br>
                        10.00 - 19.00<br>
                        <p class=" "><a href="#" class="btn-xs" data-toggle="modal" data-target="#modalLinline">Подробнее</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="col-md-4 col-xs-4">
                        <img src="/resources/img/lineline.png" width="91" height="91">
                    </div>
                    <div class="col-md-8 col-xs-8">

                        <strong>Салон красоты</strong><br>
                        ул. Червякова д.8<br>
                        10.00 - 19.00<br>
                        <p class=" "><a href="#" class="btn-xs" data-toggle="modal" data-target="#modalLinline">Подробнее</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="col-md-4 col-xs-4">
                        <img src="/resources/img/lineline.png" width="91" height="91">
                    </div>
                    <div class="col-md-8 col-xs-8">

                        <strong>Салон красоты</strong><br>
                        ул. Червякова д.8<br>
                        10.00 - 19.00<br>
                        <p class=" "><a href="#" class="btn-xs" data-toggle="modal" data-target="#modalLinline">Подробнее</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="col-md-4 col-xs-4">
                        <img src="/resources/img/lineline.png" width="91" height="91">
                    </div>
                    <div class="col-md-8 col-xs-8">

                        <strong>Салон красоты</strong><br>
                        ул. Червякова д.8<br>
                        10.00 - 19.00<br>
                        <p class=" "><a href="#" class="btn-xs" data-toggle="modal" data-target="#modalLinline">Подробнее</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="col-md-4 col-xs-4">
                        <img src="/resources/img/lineline.png" width="91" height="91">
                    </div>
                    <div class="col-md-8 col-xs-8">

                        <strong>Салон красоты</strong><br>
                        ул. Червякова д.8<br>
                        10.00 - 19.00<br>
                        <p class=" "><a href="#" class="btn-xs" data-toggle="modal" data-target="#modalLinline">Подробнее</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="col-md-4 col-xs-4">
                        <img src="/resources/img/lineline.png" width="91" height="91">
                    </div>
                    <div class="col-md-8 col-xs-8">

                        <strong>Салон красоты</strong><br>
                        ул. Червякова д.8<br>
                        10.00 - 19.00<br>
                        <p class=" "><a href="#" class="btn-xs" data-toggle="modal" data-target="#modalLinline">Подробнее</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="col-md-4 col-xs-4">
                        <img src="/resources/img/lineline.png" width="91" height="91">
                    </div>
                    <div class="col-md-8 col-xs-8">

                        <strong>Салон красоты</strong><br>
                        ул. Червякова д.8<br>
                        10.00 - 19.00<br>
                        <p class=" "><a href="#" class="btn-xs" data-toggle="modal" data-target="#modalLinline">Подробнее</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="col-md-4 col-xs-4">
                        <img src="/resources/img/lineline.png" width="91" height="91">
                    </div>
                    <div class="col-md-8 col-xs-8">

                        <strong>Салон красоты</strong><br>
                        ул. Червякова д.8<br>
                        10.00 - 19.00<br>
                        <p class=" "><a href="#" class="btn-xs" data-toggle="modal" data-target="#modalLinline">Подробнее</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="col-md-4 col-xs-4">
                        <img src="/resources/img/lineline.png" width="91" height="91">
                    </div>
                    <div class="col-md-8 col-xs-8">

                        <strong>Салон красоты</strong><br>
                        ул. Червякова д.8<br>
                        10.00 - 19.00<br>
                        <p class=" "><a href="#" class="btn-xs" data-toggle="modal" data-target="#modalLinline">Подробнее</a>
                        </p>
                    </div>
                </div>




            </div>
            <div id="modalLinline" class="modal fade">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header box">
                            <div class="col-md-10 col-xs-8">
                                <div class="col-md-12"><h4><strong>Linline</strong></h4></div>
                                <div class="col-md-12 hidden-xs">Наши услуги предоставляются бары кафе столыю..Н.</div>
                            </div>
                            <div class="col-md-2 col-xs-4"><button class="btn btn-danger" type="button" data-dismiss="modal">Закрыть</button></div>
                        </div>
                        <div class="row modal-body">
                            <div class="col-md-8">
                                <div  style="position: absolute;">
                                    <div>
                                        <a rel="nofollow" target="_blank" href="/resources/img/blackhool.jpg">
                                            <button class="btn-xs btn-default"><i class="glyphicon glyphicon-zoom-in"></i></button>
                                        </a>
                                    </div>
                                    <div>
                                        <button class="btn-xs btn-default"><a style="color: #0f0f0f" id="linline" onclick="save('linline')"><i class="glyphicon glyphicon-save"></i></a></button>
                                    </div>
                                    <div>
                                        <button class="btn-xs btn-default"><a style="color: #0f0f0f"><i class="glyphicon glyphicon-star"></i></a></button>
                                    </div>
                                </div>
                                <div><img class="img-responsive" src="/resources/img/blackhool.jpg" alt="linline"/></div>

                            </div>
                            <div class="box col-md-4 col-xs-12">
                                <div class="col-md-12 col-xs-6">
                                    <button onclick="viewdiv('work')" class="btn-xs btn-primary col-md-8 col-xs-12">Режим
                                        работы
                                    </button>
                                    <div id="work" style="display: none">
                                        <div class="row col-md-7">
                                        <span><strong>Пн:</strong></span> <span>17:00-05:00</span><br>
                                        <span><strong>Вт:</strong></span> <span>17:00-05:00</span><br>
                                        <span><strong>Ср:</strong></span> <span>17:00-05:00</span><br>
                                        <span><strong>Чт:</strong></span> <span>17:00-05:00</span><br>
                                        <span><strong>Пт:</strong></span> <span>17:00-05:00</span><br>
                                        <span><strong>Сб:</strong></span> <span>17:00-05:00</span><br>
                                        <span><strong>Вс:</strong></span> <span>Выходной</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-xs-6">
                                    <button onclick="viewdiv('phone')" class="btn-xs btn-primary col-md-8 col-xs-12">
                                        Телефоны
                                    </button>

                                    <div id="phone" style="display: none">
                                        <div class="row col-md-7">
                                            <span><h6><strong>(Рецепция)</strong></h6></span>                       <h6><span >+37517 3095000</span></h6>
                                            <span><h6><strong>(Отдел бронирования)</strong></h6></span>             <h6><span >+37517 2397744</span></h6>
                                            <span><h6><strong>(Отдел маркетинга)</strong></h6></span>               <h6><span >+37517 3095050</span></h6>
                                            <span><h6><strong>(Организация бизнес-мероприятий)</strong></h6></span> <h6><span >+37517 2397655</span></h6>
                                            <span><h6><strong>(Банкетная служба)</strong></h6></span>               <h6><span >+37517 2397625</span></h6>
                                        </div>
                                        <%--<h6>+375 17 309 50 00 (Рецепция)</h6>--%>
                                        <%--<h6>+375 17 239 77 44 (Отдел бронирования)</h6>--%>
                                        <%--<h6>+375 17 309 50 50 (Отдел маркетинга)</h6>--%>
                                        <%--<h6>+375 17 239 76 55 (Организация бизнес-мероприятий)</h6>--%>
                                        <%--<h6>+375 17 239 76 25 (Банкетная служба)</h6>--%>
                                    </div>
                                </div>
                                <div class="col-md-12 col-xs-6">
                                    <button onclick="viewdiv('vacansy')" class="btn-xs btn-primary col-md-8 col-xs-12">
                                        Вакансии
                                    </button>
                                    <div class="col-md-12 col-xs-12" id="vacansy" style="display: none">
                                        Требуеться повор 5 разряда тел. 2831212 МТС
                                    </div>
                                </div>
                                <div class="col-md-12 col-xs-6">
                                    <button onclick="viewdiv('akcii')" class="btn-xs btn-primary col-md-8 col-xs-12">
                                        Акции
                                    </button>
                                    <div class="col-md-12 col-xs-12" id="akcii" style="display: none">
                                        1 + 1 = 3!!!!
                                    </div>
                                </div>
                                <div class="col-md-12 col-xs-12">
                                    <strong>Адрес: </strong><span>ул. Червякова, 8</span><br></div>
                                <div class="col-md-12 col-xs-12"><strong>Закрытие через: </strong>1ч 30мин<br></div>
                                <div class="col-md-12 col-xs-12"><strong>GPS: </strong>53.920757, 27.553746<br></div>
                                <div class="col-md-12 col-xs-12"><strong>Сайт: </strong><a urn="http://linline.com">linline.com</a><br></div>
                            </div>

                        </div>
                   
                    </div>
                </div>
            </div>
        </section>
    </div>

    <div id="mapArea" class="carousel slide" style="padding-top: 50px">

        <div class="carousel-inner">
            <div class="btn-group">
                <button class="btn btn-primary btn-block dropdown-toggle" data-toggle="dropdown">Районы и сокращения<span
                        class="caret"></span></button>
                <ul class="dropdown-menu main-menu">
                    <li><a href="#">Веснянка (ВЕС)</a>
                        <ul class="sub-menu">
                            <li><a href="#1">M</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Мястровская</a></li>
                                    <li><a href="#2">Мстиславца</a></li>
                                    <li><a href="#3">Матусевича</a></li>
                                    <li><a href="#3">Мирная</a></li>
                                </ul>
                            </li>
                            <li><a href="#2">П</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Павлова</a></li>
                                    <li><a href="#2">Парниковая</a></li>
                                    <li><a href="#3">Петруся</a></li>
                                    <li><a href="#3">Полевая</a></li>
                                </ul>
                            </li>
                            <li><a href="#3">Р</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Радужная</a></li>
                                    <li><a href="#2">Ржавецкая</a></li>
                                    <li><a href="#3">Ратомская</a></li>
                                    <li><a href="#3">Речная</a></li>
                                </ul>
                            </li>
                            <li><a href="#3">У</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Украинки</a></li>
                                    <li><a href="#2">Уманская</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">Новинки (НОВ)</a>
                        <ul class="sub-menu">
                            <li><a href="#1">M</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Мястровская</a></li>
                                    <li><a href="#2">Мстиславца</a></li>
                                    <li><a href="#3">Матусевича</a></li>
                                    <li><a href="#3">Мирная</a></li>
                                </ul>
                            </li>
                            <li><a href="#2">П</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Павлова</a></li>
                                    <li><a href="#2">Парниковая</a></li>
                                    <li><a href="#3">Петруся</a></li>
                                    <li><a href="#3">Полевая</a></li>
                                </ul>
                            </li>
                            <li><a href="#3">Р</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Радужная</a></li>
                                    <li><a href="#2">Ржавецкая</a></li>
                                    <li><a href="#3">Ратомская</a></li>
                                    <li><a href="#3">Речная</a></li>
                                </ul>
                            </li>
                            <li><a href="#3">У</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Украинки</a></li>
                                    <li><a href="#2">Уманская</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">Бульвар (БУЛ)</a>
                        <ul class="sub-menu">
                            <li><a href="#1">M</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Мястровская</a></li>
                                    <li><a href="#2">Мстиславца</a></li>
                                    <li><a href="#3">Матусевича</a></li>
                                    <li><a href="#3">Мирная</a></li>
                                </ul>
                            </li>
                            <li><a href="#2">П</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Павлова</a></li>
                                    <li><a href="#2">Парниковая</a></li>
                                    <li><a href="#3">Петруся</a></li>
                                    <li><a href="#3">Полевая</a></li>
                                </ul>
                            </li>
                            <li><a href="#3">Р</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Радужная</a></li>
                                    <li><a href="#2">Ржавецкая</a></li>
                                    <li><a href="#3">Ратомская</a></li>
                                    <li><a href="#3">Речная</a></li>
                                </ul>
                            </li>
                            <li><a href="#3">У</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Украинки</a></li>
                                    <li><a href="#2">Уманская</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">СелХозПоселок (СХП)</a>
                        <ul class="sub-menu">
                            <li><a href="#1">M</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Мястровская</a></li>
                                    <li><a href="#2">Мстиславца</a></li>
                                    <li><a href="#3">Матусевича</a></li>
                                    <li><a href="#3">Мирная</a></li>
                                </ul>
                            </li>
                            <li><a href="#2">П</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Павлова</a></li>
                                    <li><a href="#2">Парниковая</a></li>
                                    <li><a href="#3">Петруся</a></li>
                                    <li><a href="#3">Полевая</a></li>
                                </ul>
                            </li>
                            <li><a href="#3">Р</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Радужная</a></li>
                                    <li><a href="#2">Ржавецкая</a></li>
                                    <li><a href="#3">Ратомская</a></li>
                                    <li><a href="#3">Речная</a></li>
                                </ul>
                            </li>
                            <li><a href="#3">У</a>
                                <ul class="sub-menu2">
                                    <li><a href="#1">Украинки</a></li>
                                    <li><a href="#2">Уманская</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="active item">
                <img src="/resources/img/map1.jpeg" alt="">
            </div>
        </div>
    </div> <!-- /container -->
</div>
<div class="container">
    <div class="row">
        <div id="contact">
            <div class="col-xs-12 col-md-12 alert-success">
                <div class="col-md-4 col-sm-12">
                        <img class="img-circle" src="/resources/img/map.jpeg" width="300" height="300" alt="contact map">
                </div>
                <div class="col-md-3 col-sm-12">
                    <div >Контактная информация</div>
                    <br>
                    <p>Integer eu neque sed mi fringilla pellentesque a eget leo. Duis ornare diam lorem, sit amet tempor mauris fringilla in. Etiam semper tempus augue, at vehicula metus. Nam vestibulum tortor nec congue ornare.</p>
                    <div >
                        <ul>
                            <li class="left">Телефон</li>
                            <li class="right">+375 333 848 848</li>
                            <br>
                            <li class="left">Email</li>
                            <li class="right">ryadom@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-5 col-sm-12">
                    <form role="form">
                        <div class="form-group">
                            <input name="fullname" type="text" class="form-control" id="fullname" placeholder="Your Name" maxlength="40">
                        </div>
                        <div class="form-group">
                            <input name="email" type="text" class="form-control" id="email" placeholder="Your Email" maxlength="40">
                        </div>
                        <div class="form-group">
                            <input name="subject" type="text" class="form-control" id="subject" placeholder="Subject" maxlength="40">
                        </div>
                        <div class="form-group">
                            <textarea name="message" rows="10" class="form-control" id="message" placeholder="Message"></textarea>
                        </div>
                        <div class="form-group"><button type="button" class="btn btn-primary">Send Message</button></div>
                    </form>
                </div>
        </div>
    </div>

</div>
<%@ include file="include/footer.jsp" %>
</div>
<!-- Le javascript
================================================== -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="/resources/js/show_panel.js" type="text/javascript"></script>
<script src="/resources/js/jquery-3.2.0.js"></script>
<script src="/resources/js/button.js"></script>
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/bootstrap.js"></script>


</body>
</html>