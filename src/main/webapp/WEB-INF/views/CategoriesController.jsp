<%@ page import="ru.itmotourism.DAO.PeopleRepository" %>
<%@ page import="ru.itmotourism.DAO.CategoriesRepository" %>
<%@ page import="ru.itmotourism.entities.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="ru.itmotourism.entities.People" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Site made with Mobirise Website Builder v4.4.1, https://mobirise.com -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="Mobirise v4.4.1, mobirise.com">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="assets/images/logo2.png" type="image/x-icon">
    <meta name="description" content="Web Generator Description">
    <title>Page 3</title>
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
    <link rel="stylesheet" href="assets/tether/tether.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="assets/soundcloud-plugin/style.css">
    <link rel="stylesheet" href="assets/socicon/css/styles.css">
    <link rel="stylesheet" href="assets/dropdown/css/style.css">
    <link rel="stylesheet" href="assets/theme/css/style.css">
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">



</head>
<body>
<section class="menu cid-qJgHptF9Sy" once="menu" id="menu1-u" data-rv-view="594">



    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">


            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown navbar-nav-top-padding" data-app-modern-menu="true"><li class="nav-item">
                <a class="nav-link link text-white display-4" href="/">
                    <span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>Главная &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>
            </li>

                <li class="nav-item"><a class="nav-link link text-white display-4" href="/categoriesController"><span class="mbri-flag mbr-iconfont mbr-iconfont-btn"></span>
                    Спортивные разряды &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>
                </li
                <%if(session.getAttribute("ROLE_ADMIN")!=null){%>
                <%="                <li class=\"nav-item\"><a class=\"nav-link link text-white display-4\" href=\"/adminPage\"><span class=\"mbri-flag mbr-iconfont mbr-iconfont-btn\"></span>\n" +
                        "                    Управление событиями &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>\n" +
                        "                </li>"%>
                <%}%>
            </ul>
            <%if(session.getAttribute("ROLE_USER")!=null){%>
            <%="<div class=\"navbar-buttons mbr-section-btn\"><a class=\"btn btn-sm btn-primary display-4\" href=\"/logOut\"><span class=\"mbri-key mbr-iconfont mbr-iconfont-btn\"></span>\n" +
                    "                Выйти</a></div>"%>
            <%}else {%>
            <%="<div class=\"navbar-buttons mbr-section-btn\"><a class=\"btn btn-sm btn-primary display-4\" href=\"/autentification\"><span class=\"mbri-key mbr-iconfont mbr-iconfont-btn\"></span>\n" +
                    "                Авторизация</a></div>"%>
            <%}%>
        </div>
    </nav>
</section>


<section class="engine"><a href="https://mobirise.co/h">how to make your own website</a></section><section class="header1 cid-qJOVvPUm4v" id="header1-1a" data-rv-view="116">





    <div class="container">
        <div class="row justify-content-md-center">
            <div class="mbr-white col-md-10">
                <h1 class="mbr-section-title align-center mbr-bold pb-3 mbr-fonts-style display-1">
                    Спортивные разряды пользователей
                </h1>
                <h3 class="mbr-section-subtitle align-center mbr-light pb-3 mbr-fonts-style display-2">
                </h3>
                <p class="mbr-text align-center pb-3 mbr-fonts-style display-5">
                <div class="mbr-header mbr-header--center mbr-header--std-padding">
                    <h2 class="mbr-header__text"></h2>
                </div>
                <div data-form-alert="true"></div>
                <%                    PeopleRepository peopleRepository = (PeopleRepository)session.getAttribute("people");
                    CategoriesRepository categoriesRepository = (CategoriesRepository)session.getAttribute("categories");
                    List<Categories> categoriesList = categoriesRepository.findAllOrderByKindOfSport();
                    if(categoriesList.size()!=0){
                        People people;%>
                <%="                <table>\n" +
                        "                    <tr>\n" +
                        "                        <th>Фамилия</th>\n" +
                        "                        <th>Имя</th>\n" +
                        "                        <th>Отчество</th>\n" +
                        "                        <th>Дата рождения</th>\n" +
                        "                        <th>Вид спорта</th>\n" +
                        "                        <th>Разряд</th>\n" +
                        "                        <th>№ приказа</th>\n" +
                        "                        <th>дата приказа</th>\n" +
                        "                    </tr>"%>
                <%
                    for(Categories categories: categoriesList){
                        people = peopleRepository.findById(categories.getPeopleId());
                %>
                <%=     "                    <tr>\n" +
                        "                        <th>"+people.getSurname()+"</th>\n" +
                        "                        <th>"+people.getName()+"</th>\n" +
                        "                        <th>"+people.getFatherName()+"</th>\n" +
                        "                        <th>"+people.getbDay()+"</th>\n" +
                        "                        <th>"+categories.getKindOfSport()+"</th>\n" +
                        "                        <th>"+categories.getCategory()+"</th>\n" +
                        "                        <th>"+categories.getOrderNumber()+"</th>\n" +
                        "                        <th>"+categories.getDate()+"</th>\n" +
                        "                    </tr>"%>
                <%}
                }else {%>
                <%="Ни один из зарегистрированных пользователей не указал спортивных разрядов"%>
                <%}session.removeAttribute("people");
                    session.removeAttribute("categories");%>
                </table>
                </p>
                <div class="mbr-section-btn align-center">
                    <a class="btn btn-md btn-primary display-4" href="/events">
                        <span class="mbr-iconfont mbri-file"></span>Регистрация на событие</a>
                    <a class="btn btn-md btn-white-outline display-4" href="/addCategory">
                        <span class="mbr-iconfont mbri-idea"></span>Регистрация спортивного разряда</a>
                </div>
            </div>
        </div>
    </div>

</section>

<section class="cid-qJOVpv0xf9" id="footer1-19" data-rv-view="119">





    <div class="container">
        <div class="media-container-row content text-white">
            <div class="col-12 col-md-3">
                <div class="media-wrap">
                    <a href="https://mobirise.com/">
                        <img src="assets/images/logo2-1.png" alt="Mobirise" title="" media-simple="true">
                    </a>
                </div>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3">
                    Address
                </h5>
                <p class="mbr-text">
                    1234 Street Name
                    <br>City, AA 99999
                </p>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3">
                    Contacts
                </h5>
                <p class="mbr-text">
                    Email: support@mobirise.com
                    <br>Phone: +1 (0) 000 0000 001
                    <br>Fax: +1 (0) 000 0000 002
                </p>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3"></h5>
                <p class="mbr-text">&nbsp;<br><br><br></p>
            </div>
        </div>
        <div class="footer-lower">
            <div class="media-container-row">
                <div class="col-sm-12">
                    <hr>
                </div>
            </div>
            <div class="media-container-row mbr-white">
                <div class="col-sm-6 copyright">
                    <p class="mbr-text mbr-fonts-style display-7">
                        © Copyright 2017 Mobirise - All Rights Reserved
                    </p>
                </div>
                <div class="col-md-6">
                    <div class="social-list align-right">
                        <div class="soc-item">
                            <a href="https://twitter.com/mobirise" target="_blank">
                                <span class="mbr-iconfont mbr-iconfont-social socicon-youtube socicon" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.facebook.com/pages/Mobirise/1616226671953247" target="_blank">
                                <span class="mbr-iconfont mbr-iconfont-social socicon-vkontakte socicon" media-simple="true"></span>
                            </a>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<script src="assets/web/assets/jquery/jquery.min.js"></script>
<script src="assets/popper/popper.min.js"></script>
<script src="assets/tether/tether.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/dropdown/js/script.min.js"></script>
<script src="assets/touch-swipe/jquery.touch-swipe.min.js"></script>
<script src="assets/smooth-scroll/smooth-scroll.js"></script>
<script src="assets/theme/js/script.js"></script>


</body>
</html>