<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<%@include file="../checkLogin.jsp" %>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="-1" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="No-Cache" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="viewport" content="width=1024" />
    <meta name="keywords" content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작" />
    <meta name="description" content="CGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. CGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다." />
    <meta property="og:site_name" content="영화 그 이상의 감동. CGV"/>
    <meta id="ctl00_og_title" property="og:title" content="통합검색 | 영화 그 이상의 감동. CGV"></meta>
    
    
    <meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png"></meta>
    <link rel="alternate" href="http://m.cgv.co.kr" />
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_headerTitle">통합검색 | MOVIEPLANET</title>
    <link rel="shortcut icon" type="image/x-icon" href="https://img.cgv.co.kr/R2014/images/favicon.ico" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css" />
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/common.css" />
    
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/eggupdate.css" />
    <link rel="stylesheet" media="print" type="text/css" href="https://img.cgv.co.kr/R2014/css/print.css" />    
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />
    
    <script type="text/javascript" src="/common/js/extraTheaters.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.config.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.utils.js"></script>
	<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.pageing.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.init.js"></script>

    <!--[if lte IE 9]><script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
	<script src="https://img.cgv.co.kr/R2014/js/slick/slick.js" type="text/javascript" charset="utf-8"></script>

    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick.css" />
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick-theme-custom.css" />

    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/icheck/login.timer.js"></script>
    <script src="https://img.cgv.co.kr/R2014/js/icheck/icheck.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/icheck/iCheck.css" />

    <!-- 2020.05.07 감정지수/프리에그 프로젝트 추가 -->
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/preegg.css" />

     <!-- 2023.03.27 홈페이지 스토어 영역 內 배너 영역 미노출의 件 -->
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/giftstore.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/commonstore.js"></script>
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/giftstore/giftstore.css" /> 

    <!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
    <script type="text/javascript" src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>

    <!-- 각페이지 Header Start--> 
    


    <!--/각페이지 Header End--> 
<style>
.search_wrap .search_title span:after {
    content: ''
}

#ticket {
    position: relative;
}

#ticket .steps {
    position: relative;
    width: 996px;
    background-color: #F2F0E4;
}

#ticket .steps .step1 {
    height: 530px;
    background-color: #d4d3c9;
}

#ticket .steps .step {
    position: relative;
}

#ticket .section-movie {
    width: 284px;
    /* height: 528px; */
}

#ticket .section {
    position: relative;
    float: left;
    height: 100%;
    margin-left: 2px;
    background-color: #f2f0e5;
    overflow: hidden;
}

#ticket .section.section-movie .col-head {
    background-position: 50% 8px;
}

#ticket .section .col-head {
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/titles.png);
    background-repeat: no-repeat;
    background-position: 50% 3px;
}

#ticket .section .col-head {
    position: relative;
    height: 33px;
    line-height: 33px;
    text-align: center;
    background-color: #333333;
    background-repeat: no-repeat;
    background-position: 50% 50%;
}

#ticket .section-movie .col-body .movie-select {
    float: left;
    position: relative;
    margin-left: 20px;
    margin-top: 9px;
    width: 254px;
    height: 100%;
}

#ticket .section-movie .col-body .movie-select .movie-list {
    float: left;
    width: 254px;
    margin-top: 3px;
    height: 84%;
}

#ticket .section-movie .col-body .movie-select .movie-list > ul > li {
    clear: both;
    float: left;
    width: 244px;
    height: 35px;
    line-height: 35px;
    margin-bottom: 1px;
    position: relative;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#ticket .section-theater {
    width: 265px;
    /* height: 528px; */
}

#ticket .section {
    position: relative;
    float: left;
    height: 100%;
    margin-left: 2px;
    background-color: #f2f0e5;
    overflow: hidden;
    
    
}

#ticket .section.section-theater .col-head {
    background-position: 50% -25px;
}

.sreader {
    display: block;
    position: absolute;
    left: -10000px;
}

#ticket .section .col-head {
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/titles.png);
    background-repeat: no-repeat;
    background-position: 50% 3px;
}

#ticket .section .col-head {
    position: relative;
    height: 33px;
    line-height: 33px;
    text-align: center;
    background-color: #333333;
    background-repeat: no-repeat;
    background-position: 50% 50%;
}

#ticket .section-date {
    width: 91px;
    /* height: 528px; */
}

#ticket .section {
    position: relative;
    float: left;
    height: 100%;
    margin-left: 2px;
    background-color: #f2f0e5;
    overflow: hidden;
}

#ticket .section.section-date .col-head {
    background-position: 50% -58px;
}

#ticket .section .col-head {
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/titles.png);
    background-repeat: no-repeat;
    background-position: 50% 3px;
}

#ticket .section .col-head {
    position: relative;
    height: 33px;
    line-height: 33px;
    text-align: center;
    background-color: #333333;
    background-repeat: no-repeat;
    background-position: 50% 50%;
}

element.style {
    height: 565px;
} 

#ticket .section .col-body {
    width: 100%;
    position: relative;
    overflow: hidden;
}

#ticket .section-date .col-body .date-list {
    float: left;
    width: 74px;
    height: 96%;
    margin-top: 19px;
    margin-left: 7px;
}

/* .nano {
    position: relative;
    width: 100%;
    height: 100%;
    overflow: hidden;
} ------------------------------------------------------------------------------------------0525*/

#ticket .section-date .col-body .date-list ul {
    width: 104px;
}
/* ----------------------------------------------------------- 시작 */
/*.nano .content.scroll-y {
    overflow-x: hidden;
}

.nano .content {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    overflow: scroll;
}

 dl, ul, ol {
    list-style: none;
    list-style-position: initial;
    list-style-image: initial;
    list-style-type: none;
}

body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select {
    margin: 0;
    padding: 0;
    border: 0;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
} 
body {
    background: #fff;
    -webkit-text-size-adjust: none;
    text-align: left;
}

body, input, select, textarea, header, footer {
    color: #333;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
    font-weight: normal;
}

.has-scrollbar .content::-webkit-scrollbar {
    visibility: visible;
}

.nano .content::-webkit-scrollbar {
    visibility: hidden;
}*/
/* ----------------------------------------------------------- 끝 */

#ticket .section-date .col-body .date-list ul li.month {
    clear: both;
    overflow: hidden;
    float: left;
    width: 64px;
    height: 67px;
    margin-bottom: 1px;
    margin-left: 7px;
}

body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select {
    margin: 0;
    padding: 0;
    border: 0;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#ticket .section-date .col-body .date-list ul li.month span.year {
    display: block;
    margin-top: 12px;
    text-align: center;
    color: #666;
    font-size: 11px;
    font-family: Verdana;
    font-weight: bold;
    line-height: 11px;
}

#ticket .section-date .col-body .date-list ul li.month span.month {
    display: block;
    margin-top: 3px;
    text-align: center;
    color: #666;
    font-size: 30px;
    font-family: Verdana;
    font-weight: bold;
    line-height: 30px;
}

#ticket .section-date .col-body .date-list ul li.day.selected {
    background-color: #333;
    width: 60px;
    height: 33px;
    line-height: 33px;
    border: 1px solid #000;
}

#ticket .section-date .col-body .date-list ul li.day {
    margin-left: 10px;
    width: 60px;
}

#ticket .section-date .col-body .date-list ul li.day {
    position: relative;
    clear: both;
    float: left;
    width: 64px;
    height: 35px;
    line-height: 35px;
    margin-bottom: 1px;
}

#ticket .section-date .col-body .date-list ul li.day.selected a {
    border: 1px solid #5c5c5c;
    height: 29px;
    line-height: 29px;
    margin: 1px;
    padding-left: 6px;
    padding-right: 5px;
    color: #fff;
}

#ticket .section-date .col-body .date-list ul li.day a {
    margin-left: 0;
}

#ticket .section-date .col-body .date-list ul li.day a {
    display: block;
    height: 100%;
    vertical-align: middle;
    padding-left: 8px;
    padding-right: 7px;
    margin-left: 13px;
}

a {
    text-decoration: none;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    color: #333;
}

a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#ticket .section-date .col-body .date-list ul li.day.selected a span.dayweek {
    color: #fff;
}

#ticket .section-date .col-body .date-list ul li.day a span.dayweek {
    float: left;
    color: #333;
    font-size: 12px;
    padding-top: 2px;
    cursor: pointer;
}

#ticket .section-date .col-body .date-list ul li.day.selected a span.day {
    color: #fff;
}

#ticket .section-date .col-body .date-list ul li.day a span.day {
    float: right;
    color: #333;
    font-family: Verdana;
    font-size: 14px;
    font-weight: bold;
    cursor: pointer;
}

#ticket .section-date .col-body .date-list ul li.day {
    margin-left: 10px;
    width: 60px;
}

#ticket .section-date .col-body .date-list ul li.day {
    position: relative;
    clear: both;
    float: left;
    width: 64px;
    height: 35px;
    line-height: 35px;
    margin-bottom: 1px;
}

 
 #ticket .step1 .section-time {
    width: 346px;
    /* height: 528px; */
}

#ticket .section {
    position: relative;
    float: left;
    height: 100%;
    margin-left: 2px;
    background-color: #f2f0e5;
    overflow: hidden;
}

#ticket .section.section-time .col-head {
    background-position: 50% -91px;
}

#ticket .section .col-head {
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/titles.png);
    background-repeat: no-repeat;
    background-position: 50% 3px;
}

#ticket .section .col-head {
    position: relative;
    height: 33px;
    line-height: 33px;
    text-align: center;
    background-color: #333333;
    background-repeat: no-repeat;
    background-position: 50% 50%;
}

element.style {
    height: 565px;
}

#ticket .section .col-body {
    width: 100%;
    position: relative;
    overflow: hidden;
}

#ticket .step1 .section-time .col-body .time-list {
    float: left;
    width: 316px;
    height: 88%;
    margin-left: 20px;
    margin-top: 15px;
    overflow: hidden;
}

/* .nano {
    position: relative;
    width: 100%;
    height: 100%;
    overflow: hidden;
} ----------------------------------------------------------------------------------0525*/

#ticket .step1 .section-time .col-body .time-list .theater:first-child {
    margin-top: 0px;
}

#ticket .step1 .section-time .col-body .time-list .theater {
    float: left;
    width: 306px;
    border-bottom: solid 2px #cfcdc3;
    margin-top: 16px;
    overflow: hidden;
}

#ticket .step1 .section-time .col-body .time-list .theater .title span.floor {
    color: #333;
    font-size: 12px;
    font-weight: bold;
    margin-right: 5px;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li {
    position: relative;
    float: left;
    height: 25px;
    line-height: 25px;
    padding-bottom: 9px;
}

body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select {
    margin: 0;
    padding: 0;
    border: 0;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li a {
    display: block;
    vertical-align: middle;
    width: 103px;
    height: 25px;
}

.button {
    display: inline;
    border: none;
    padding: 0 0;
    background: none;
    white-space: nowrap;
    vertical-align: baseline;
    text-align: center;
    cursor: pointer;
    text-decoration: none;
    -webkit-user-drag: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

a {
    text-decoration: none;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    color: #333;
}

a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li.disabled a span.time {
    color: #666;
    text-decoration: line-through;
    background-image: none;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li a span.time {
    width: 49px;
    height: 23px;
    line-height: 23px;
    border: 1px solid #d6d3ce;
    background-image: none;
    background-color: #f2f0e5;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li a span.time {
    float: left;
    width: 51px;
    height: 25px;
    line-height: 25px;
    color: #333;
    font-size: 12px;
    font-weight: bold;
    font-family: Verdana;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/timelist_item_none.png) no-repeat;
}

.button {
    display: inline;
    border: none;
    padding: 0 0;
    background: none;
    white-space: nowrap;
    vertical-align: baseline;
    text-align: center;
    cursor: pointer;
    text-decoration: none;
    -webkit-user-drag: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li a span.time span {
    display: block;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li.disabled a span.time {
    color: #666;
    text-decoration: line-through;
    background-image: none;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li a span.time {
    width: 49px;
    height: 23px;
    line-height: 23px;
    border: 1px solid #d6d3ce;
    background-image: none;
    background-color: #f2f0e5;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li a span.time {
    float: left;
    width: 51px;
    height: 25px;
    line-height: 25px;
    color: #333;
    font-size: 12px;
    font-weight: bold;
    font-family: Verdana;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/timelist_item_none.png) no-repeat;
}

#ticket {
    position: relative;
}

#ticket_tnb {
    position: relative;
    width: 100%;
    min-width: 996px;
    height: 128px;
    background-color: #1d1d1c;
}

.tnb {
    margin: 0 auto;
    width: 996px;
    height: 108px;
    padding: 10px 0;
    position: relative;
}

.tnb .tnb_step_btn_right_before {
    position: absolute;
    top: 10px;
    right: 108px;
    width: 0;
    height: 108px;
}

.tnb.step1 .btn-right {
    background-position: 0 -220px;
}

.tnb .btn-left, .tnb .btn-right {
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_buttons.png) no-repeat;
    background-position: 0 0;
    overflow: hidden;
    text-indent: -1000px;
}

.tnb .btn-right {
    position: absolute;
    top: 10px;
    right: 0;
    width: 106px;
    height: 108px;
}

a {
    text-decoration: none;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    color: #333;
}

a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#ticket .section-seat {
    float: none;
    width: 992px;
    min-height: 528px;
}

#ticket .section {
    position: relative;
    float: left;
    height: 100%;
    margin-left: 2px;
    background-color: #f2f0e5;
    overflow: hidden;
}

#ticket .section-seat {
    float: none;
    width: 992px;
    min-height: 528px;
}

#ticket .section {
    position: relative;
    float: left;
    height: 100%;
    margin-left: 2px;
    background-color: #f2f0e5;
    overflow: hidden;
}

#ticket .section.section-seat .col-head {
    background-position: 50% -124px;
}

#ticket .section .col-head {
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/titles.png);
    background-repeat: no-repeat;
    background-position: 50% 3px;
}

#ticket .section .col-head {
    position: relative;
    height: 33px;
    line-height: 33px;
    text-align: center;
    background-color: #333333;
    background-repeat: no-repeat;
    background-position: 50% 50%;
}

#ticket .section.section-seat .col-head {
    background-position: 50% -124px;
}

#ticket .section .col-head {
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/titles.png);
    background-repeat: no-repeat;
    background-position: 50% 3px;
}

#ticket .section .col-head {
    position: relative;
    height: 33px;
    line-height: 33px;
    text-align: center;
    background-color: #333333;
    background-repeat: no-repeat;
    background-position: 50% 50%;
}

#ticket .section-seat > .col-body {
    /* height: 495px; */
    height: auto;
}

#ticket .section .col-body {
    width: 100%;
    position: relative;
    overflow: hidden;
}

#ticket .section-seat .person_screen {
    position: relative;
    border-bottom: 2px solid #d4d3c9;
    display: inline-block;
    padding: 17px 0 3px 0;
    width: 100%;
}

#ticket .section-seat .person_screen {/* asdf */
    position: relative;
    border-bottom: 2px solid #d4d3c9;
    display: inline-block;
    padding: 17px 0 3px 0;
    width: 100%;
}

#ticket .section-seat .person_screen .section {
    float: left;
}

#ticket .section-screen-select {
    display: block;
    width: 500px;
    height: 100%;
    float: left;
    overflow: visible;
    background: transparent;
    margin-top: 1px;
}

#ticket .section {
    position: relative;
    float: left;
    height: 100%;
    margin-left: 2px;
    background-color: #f2f0e5;
    overflow: hidden;
}

#ticket .section-screen-select > div {
    position: relative;
    height: 100%;
    letter-spacing: -1px;
}

#user-select-info {
    width: auto;
    margin: 0 0 0 20px;
}

#user-select-info p.playYMD-info {
    display: inline-block;
    line-height: 1.2em;
    margin-top: 12px;
    color: #5a5a5a;
}

#user-select-info p.playYMD-info {
    font-family: Helvetica Neue,Helvetica,Arial,sans-serif;
    font-weight: bold;
    font-size: 1.9em;
    margin-top: 5px;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#ticket .section-screen-select > div {
    position: relative;
    height: 100%;
    letter-spacing: -1px;
}

#ticket .section-seat .theater_minimap {
    position: relative;
    width: auto;
    padding-top: 20px;
}

.theater_minimap {
    position: absolute;
    background-color: #F2F0E5;
    border: none;
    z-index: 4000;
}

#ticket .section-seat .theater {
    margin-left: 20px;
    width: 826px;
    height: 365px;
    position: relative;
}

/* .nano {
    position: relative;
    width: 100%;
    height: 100%;
    overflow: hidden;
} -----------------------------------------------------------------------------------0525*/


element.style {
    right: -17px;
    bottom: -17px;
}

/* .nano .content {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    overflow: scroll;
} */


/* 토요일 색상 */
#ticket .section-date .col-body .date-list ul li.day.day-sat a span.dayweek {
    color: #31597e;
}

#ticket .section-date .col-body .date-list ul li.day.day-sat a span.day {
    color: #31597e;
}
/* 토요일 색상 */


/* 일요일 색상 */
#ticket .section-date .col-body .date-list ul li.day.day-sun a span.dayweek {
    color: #ad2727;
}

#ticket .section-date .col-body .date-list ul li.day.day-sun a span.day {
    color: #ad2727;
}
/* 일요일 색상 */

/* 영화제목 */
#ticket .section-movie .col-body .movie-select .movie-list > ul > li > a {
    display: block;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
    vertical-align: middle;
}

a {
    text-decoration: none;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    color: #333;
}

a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#ticket .section-movie .col-body .movie-select .movie-list > ul > li > a .cgvIcon.etc {
    position: relative;
    top: -1px;
    margin: 0 6px;
    vertical-align: middle;
}

i.cgvIcon.etc.age15 {
    overflow: hidden;
    width: 20px;
    height: 20px;
    background: rgba(0,0,0,0) url(data:image/svg+xml;charset=UTF-8, %3csvg width='20' height='20' fill='none' xmlns='http://www.w3.org/2000/svg'%3e%3cg clip-path='url(%23age15)'%3e%3cpath d='M17.745 20H2.255A2.256 2.256 0 0 1 0 17.745V2.255A2.255 2.255 0 0 1 2.255 0h15.49A2.253 2.253 0 0 1 20 2.255v15.49A2.254 2.254 0 0 1 17.745 20Z' fill='%23DD742F'/%3e%3cpath d='M4.318 16.891v-9.94H3.217L4.643 3.11h2.761V16.89H4.318ZM16.313 7.815h-4.834v-2.02h5.052V3.107H8.45v7.342h5.177v3.85h-2.183v-1.812H8.45v4.095a.306.306 0 0 0 .307.308h7.556a.306.306 0 0 0 .308-.308V8.125a.307.307 0 0 0-.308-.31Z' fill='%23fff'/%3e%3c/g%3e%3cdefs%3e%3cclipPath id='age15'%3e%3cpath fill='%23fff' d='M0 0h20v20H0z'/%3e%3c/clipPath%3e%3c/defs%3e%3c/svg%3e) center/contain scroll no-repeat;
    border-radius: 2px;
}

i.cgvIcon {
    display: inline-flex;
    font-size: 0;
}

i {
    font-style: italic;
}

#ticket .section-movie .col-body .movie-select .movie-list > ul > li > a span.text {
    color: #333;
    font-weight: bold;
    padding-right: 5px;
}

#ticket .section-movie .col-body .movie-select .movie-list > ul > li > a {
    display: block;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
    vertical-align: middle;
}
/* 영화제목 */

/* 영화제목 선택*/
#ticket .section-movie .col-body .movie-select .movie-list > ul > li.selected, #ticket .section-movie .col-body .movie-select .movie-list > ul > li.press {
    background-color: #333;
    width: 242px;
    height: 33px;
    line-height: 33px;
    border: 1px solid #000;
}

#ticket .section-movie .col-body .movie-select .movie-list > ul > li {
    clear: both;
    float: left;
    width: 244px;
    height: 35px;
    line-height: 35px;
    margin-bottom: 1px;
    position: relative;
}

#ticket .section-movie .col-body .movie-select .movie-list > ul > li.selected a, #ticket .section-movie .col-body .movie-select .movie-list > ul > li.press a {
    border: 1px solid #5c5c5c;
    line-height: 29px;
    margin: 1px;
}

#ticket .section-movie .col-body .movie-select .movie-list > ul > li > a {
    display: block;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
    vertical-align: middle;
}

#ticket .section-movie .col-body .movie-select .movie-list > ul > li.press > a span.text {
    color: #fff;
}

#ticket .section-movie .col-body .movie-select .movie-list > ul > li.selected > a span.text {
    color: #fff;
}

#ticket .section-movie .col-body .movie-select .movie-list > ul > li > a span.text {
    color: #333;
    font-weight: bold;
    padding-right: 5px;
}
/* 영화제목 선택*/

/* 영화시간 선택*/
#ticket .step1 .section-time .col-body .time-list .theater ul li.selected a span.time {
    background-image: none;
    border-color: #000;
    background-color: #333;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li.selected a span.time {
    color: #fff;
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/timelist_item_selected.png);
}

#ticket .step1 .section-time .col-body .time-list .theater ul li a span.time {
    width: 49px;
    height: 23px;
    line-height: 23px;
    border: 1px solid #d6d3ce;
    background-image: none;
    background-color: #f2f0e5;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li a span.time {
    float: left;
    width: 51px;
    height: 25px;
    line-height: 25px;
    color: #333;
    font-size: 12px;
    font-weight: bold;
    font-family: Verdana;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/timelist_item_none.png) no-repeat;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li.selected a span.time span {
    border: 1px solid #5c5c5c;
    margin: 1px;
    line-height: 19px;
}

#ticket .step1 .section-time .col-body .time-list .theater ul li a span.time span {
    display: block;
}
/* 영화시간 선택*/

.tnb.step1 .btn-right.on {
    background-position: -150px -220px;
}

.tnb .btn-left, .tnb .btn-right {
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_buttons.png) no-repeat;
    background-position: 0 0;
    overflow: hidden;
    text-indent: -1000px;
}


</style>   

    
</head>
<body class="">

<div class="skipnaiv">
	<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
</div>    
<div id="cgvwrap">
    
	
	<div class="header">			
            <!-- 서비스 메뉴 --> 
            
<div class="header_content">
    <div class="contents">
        <h1 onclick=""><a href="main_loged_frm.do"><img src="http://localhost/test_prj/admin/images/movie.png" alt="CGV" /></a><span>MOVIEPLANET</span></h1>
        <ul class="memberInfo_wrap">

            
            <!-- <li><a href="/user/login/?returnURL=http%3a%2f%2fwww.cgv.co.kr%2fsearch%2fdefault.aspx%3fquery%3d%ec%95%84%eb%b0%94%ed%83%80"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png" alt="로그인" /><span>로그인</span></a></li>
            <li><a href="/user/join/"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginJoin.png" alt="회원가입" /><span>회원가입</span></a></li>
            
            
            <li><a href="/user/mycgv/"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY CGV" /><span>MY CGV</span></a></li>
            <li><a href="/support/default.aspx"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginCustomer.png" alt="고객센터" /><span>고객센터</span></a></li> -->
        </ul>
    </div>
</div>

<script>
    //GA Analytics TopMenu 영역 LOG
    //빨강 CGV클릭
    $('.header_content > .contents > h1 > a').on({
        click: function (e) {
            gaEventLog('PC_GNB', '홈', '');
        }
    });
    //서비스 메뉴
    $('.header_content > .contents > ul > li > a').on({
        click: function (e) {
            gaEventLog('PC_GNB', '서비스메뉴_'+this.text, '');
        }
    });

   

</script>

<script>

$(function() {
	//li 클릭시 버튼 변경
	$("li").click(function() {
	    var parentLi = $(this).closest("li");
	    var siblingLi = parentLi.siblings();
	    
	    // 현재 클릭된 요소와 형제 요소의 클래스 조작
	    parentLi.addClass("selected");
	    siblingLi.removeClass("selected");
	  });
	
	$("[id^='liMovie']").click(function() {
		
		var liId = $(this).attr("id");
	    var m_num = $("#" + liId).find("#mNum").val();
		$.ajax({
			
			url:"movie_date.do",
			type:"GET",
			data: {m_num : m_num},
			dataType:"json",
			success: function(jsonObj) {
				
				var className="day";
				var cnt=0;
				var year = jsonObj.year;
	            var month = jsonObj.month;
				var startDate = new Date(year, month - 1, jsonObj.open_date);
				var endDate = new Date(year, month - 1, jsonObj.end_date);
				
				var output="<li class='month dimmed'>"
				+"<div> <span class='year'>"+jsonObj.year+"</span>"
				+"<span class='month'>"+jsonObj.month+"</span>"
				+"<div></div></div></li>";
				
				 while (startDate <= endDate) {
		             var dayOfWeek = startDate.getDay(); // 0 (일요일)부터 6 (토요일)까지의 값을 반환
		             var dayOfWeekText = "";

		             switch (dayOfWeek) {
		               case 0:
		                 dayOfWeekText = "일";
		                 break;
		               case 1:
		                 dayOfWeekText = "월";
		                 break;
		               case 2:
		                 dayOfWeekText = "화";
		                 break;
		               case 3:
		                 dayOfWeekText = "수";
		                 break;
		               case 4:
		                 dayOfWeekText = "목";
		                 break;
		               case 5:
		                 dayOfWeekText = "금";
		                 break;
		               case 6:
		                 dayOfWeekText = "토";
		                 break;
		             }//end switch
		             
		             if(dayOfWeek==6) {
		            	 className="day day-sat";
		             }else if(dayOfWeek==0) {
		            	 className="day day-sun";
		             }else {
		            	 className="day";
		             }//end else

		             var dayOfMonth = startDate.getDate();
		             output +="<li data-index='"+cnt+"' class='"+className+"' id='dList"+cnt+"' onclick='releaseDate("+m_num+")'>" 
		                     +"<a href='#'><span class='dayweek'>" + dayOfWeekText +"</span>" 
		                       +"<span class='day'>" +dayOfMonth +"</span></a></li>";

		             startDate.setDate(startDate.getDate() + 1);
		             cnt++;
		             
		           }//end while
				
				
				
				$("#mDate").html(output);
		           
				
				//li 클릭시 배경 설정
				
				$("li").click(function() {
				    var parentLi = $(this).closest("li");
				    var siblingLi = parentLi.siblings();
				    
				    // 현재 클릭된 요소와 형제 요소의 클래스 조작
				    parentLi.addClass("selected");
				    siblingLi.removeClass("selected");
				  });
				
				 // 스크롤 추가
	            var liCount = $("#mDate li").length;
	            if (liCount > 13) {
	                $("#mDate").css("overflow-y", "scroll");
	                $("#mDate").css("height", "500px"); 
	            }//end if
			},//success
			error : function(xhr) {
				alert("오류발생");
			}//end error
			
		});//ajax
		
	}); //click
	
	
	
});//ready

        

       




function releaseDate(m_num) {
	
	$.ajax({
		
		url:"movie_hour.do",
		type:"GET",
		data: {m_num : m_num},
		dataType:"json",
		success: function(jsonObj) {
			var output="<span class='title'><span class='floor'>VVIP관</span></span>";
			
			if(jsonObj.arrayFlag==false) {
				output+="<li id='start' class>"
					+"<a class='button' href='#' title=''>"
					+"<span class='time'><span>"+jsonObj.hours+"</span></span>"
					+"<span class='sreader mod'></span></a></li>";
			}else {
			
			$.each(jsonObj.hours, function(idx,ele) {
				output+="<li id='start"+idx+"' class>"
					+"<a class='button' href='#' title=''>"
					+"<span class='time'><span>"+ele.hour+"</span></span>"
					+"<span class='sreader mod'></span></a></li>";
        	});//each
			}//end else
			
			
			$("#mTime").html(output);
			
			//li 클릭시 배경 설정
			$("li").click(function() {
			    var parentLi = $(this).closest("li");
			    var siblingLi = parentLi.siblings();
			    
			    // 현재 클릭된 요소와 형제 요소의 클래스 조작
			    parentLi.addClass("selected");
			    siblingLi.removeClass("selected");
			    
			    //selected된 li의 개수에 따라 다음단계 버튼 활성화
			    if($('.selected').length===3) {
			    	$("#okBtn").addClass("on");
			    }else if($('.selected').length !== 3) {
			    	$("#okBtn").removeClass("on");
			    }//else if
			    
			  });
			
		},//success
		error : function(xhr) {
			alert("오류발생");
		}//end error
		
	});//ajax
}//releaseDate

function deliverInfo() {
	
	if($('.selected').length !== 3) {
		alert("상영시간을 선택해 주세요");
		return;
	}//end if
	
	    var startValue = $("li[id^='start'].selected .time").text();
	    var dListValue = $("li[id^='dList'].selected .day").text();
	    var dayWeek = $("li[id^='dList'].selected .dayweek").text();
	    var movieValue = $("li[id^='liMovie'].selected input[type='hidden']").val();
	    
	    var currentDate = new Date();
	    var currentYear = currentDate.getFullYear();
	    var currentMonth = currentDate.getMonth() + 1;
	    
	    var url = "seat_reserve.do?m_num="+movieValue+"&watch_date="+dListValue+"&start_time="+startValue+"&day_week="+dayWeek
	    		+"&current_year="+currentYear+"&current_month="+currentMonth;
	    
	    location.href=url;
	    
	
}//deleverInfo


</script>



<div class="nav">
    <div class="contents">
        <h1><a href="/" tabindex="-1"></a></h1>
        <ul class="nav_menu">
            <li>
                <h2><a href="search_movie.do">영화</a></h2>
            </li>
            <li>
                <h2><a href=""><strong>예매</strong></a></h2>
            </li>
            <li>
            </li>
            <li>
            </li>
            <li>
            </li>
        </ul>
    </div>
</div>
            <!-- 서브 메뉴 -->			
	</div>
	<!-- E Header -->

	<!-- Contaniner -->
	<div id="contaniner"  class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
        

		<!-- Contents Area -->
		 <div id="contents" class="">
        
            
            <!-- Contents Start -->
			
 
<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/swiper.min.js" ></script>
<link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/swiper-bundle.min.css" />
<form name="aspnetForm" method="post" action="./?query=%uc544%ubc14%ud0c0" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTI0ODM3Nzc0N2RkxI/Oif3xFkQ3z1QEN/paqSsRmBU=" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=O5F0dg69w2r38nWidHYzn3F_LoSxgzI-r_CxvaKM90QJYNm7EusOdLlLVPQdIrk6Xrhi_bPxR7gTuM63_-5osEN5N101&amp;t=636765788300000000" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=vLDCNIe58OYCp1IBznLOa_7ELQjFZW7qqCtHGjAoJN9G2a2Qoq_JYgpEes8D2_T9DfwTzV1rsPeeiifVB5MYJPzLqJmctD5iSrTyPcuVrYGC5-iA6RANgXkCerthNVAps74VQ-OSHkjbo7ldw9keOP3Zh7I1&amp;t=ffffffff999c3159" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=mizHOlpiVKV2a1df2yfQWN7BiqRY8me6FhRswTmihxriWROjj-dr8iQK9KXpa6Y2RlWnBj5emUfLX_yU6zzvBNvwwL6oRDyN9QNB5D8GLyR6V95X20QLdH1dY1G4cGxhkighz3yJZqs6U8L5LEwDEdmwyfBw44BOgCWFY4TGtKfYaE8k0&amp;t=ffffffff999c3159" type="text/javascript"></script>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="59A49A67" />
</div>
<script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$PlaceHolderContent$ScriptManager1', 'aspnetForm', [], [], [], 90, 'ctl00');
//]]>
</script>
 
</form>
 <!-- 실컨텐츠 시작 -->
    <div class="search_wrap">
        <div class="searchingMovieResult_wrap" id ="searchMovieResult">
        <!-- S > CASE 1: 검색결과 있음 -->
	<td id="ctl00_PlaceHolderContent_countNR">
						<strong class='search_title'><span id='movieCount'></span></strong>
						</td>
<!-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////qwer -->
	<div id="container">					
	<div id="ticket" class="ticket ko">
		<div class="steps">
		<!-- step 1 시작 -->
	<div id="step1" class="step step1" style="height: 600px; display: block;">
				<div class="section section-movie">
					<div class="col-head" id="skip_movie_list">
					</div>
					<div class="col-body" style="height: 565px;">
						<div class="movie-select">
							<div class="movie-list nano has-scrollbar has-scrollbar-y" id="movie_list">
								<ul class="content scroll-y" onscroll="movieSectionScrollEvent();" tabindex="-1" style="right: -17px;">
								<!-- 리스트 -->
								<c:forEach var="titles" items="${ titles }" varStatus="i">
								<li class="" data-index="0" movie_cd_group="20032729" movie_idx="87045" id="liMovie${ i.index }">
								<input type="hidden" value="${ titles.m_num } "  id="mNum" />
								<a href="#"  id="mTitle" title="${ titles.m_title }" alt="${ titles.m_title }" >
								<i class="cgvIcon etc age${ titles.rank }">${ titles.rank }</i>
								<span class="text">${titles.m_title }</span>
								<span class="sreader"></span>
								</a>
								</li>
								</c:forEach>
								<!-- 리스트 -->
								</ul>
								<div class="pane pane-y" style="display: block; opacity: 1; visibility: visible;">
									<div class="slider slider-y" style="height: 50px; top: 256.114px;"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="section section-theater">
					<div class="col-head" id="skip_theater_list">
					</div>
					<div class="col-body" style="height: 565px;">
						<div class="theater-select" style="height: 554px;">
							<div class="theater-cgv-list nano has-scrollbar" id="theater_list">
							<ul class="content scroll-y" tabindex="-1" >
								<li style="font-size: 15px; font-weight: bold; margin-top: 20px; margin-left: 10px; color: #333; text-align:  center;">
									서울 - 한독빌딩점
								</li>
							</ul>
							</div>
						</div>
					</div>
						
					</div>
					<div class="section section-date">
						<div class="col-head" id="skip_date_list">
						</div>
						<div class="col-body" style="height: 565px;">
							<div class="date-list nano has-scrollbar has-scrollbar-y" id="date_list">
								<ul class="content scroll-y" tabindex="-1" style="right: -17px;">
									<div id="mDate">
									</div>
								</ul>
							 	<div class="pane pane-y" style="display: block; opacity: 1; visibility: visible;">
									<div class="slider slider-y" style="height: 50px; top: 0px;">
									</div>
								</div>
								<div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;">
									<div class="slider slider-x" style="width: 50px;">
									</div>
								</div>
								
							</div>
						</div>
					</div>
					<div class="section section-time">
						<div class="col-head" id="skip_time_list">
						</div>
						<div class="col-body" style="height: 565px;">
							<div class="time-list nano has-scrollbar">
								<div class="content scroll-y" tabindex="-1" style="right: -17px;">
									<div class="theater" screen_cd="014" movie_num="20032592">
										<ul>
											<div id="mTime">
										<!-- <span class="title">
											<span class="floor">VVIP관</span>
										</span> -->
											</div>
											<!-- <li data-index="0" data-remain_seat="124" play_start_tm="1600" screen_cd="014" movie_cd="20032592" play_num="3" class="disabled">
											<a class="button" href="#" onclick="screenTimeClickListener(event);return false;" title="">
											<span class="time"><span>16:00</span></span><span class="count">예매종료</span>
											<div class="sreader">종료시간 18:40</div>
											<span class="sreader mod"> 선택불가</span></a>
											</li>
											<li data-index="0" data-remain_seat="30" play_start_tm="1905" screen_cd="010" movie_cd="20032164" play_num="4" class="selected">
											<a class="button" href="#" onclick="screenTimeClickListener(event);return false;" title="">
											<span class="time"><span>19:05</span></span><span class="count">28석</span>
											<div class="sreader">종료시간 21:45</div>
											<span class="sreader mod"></span>
											</a>
											</li> -->
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
		</div>
		<!-- step1 끝 -->
		
	</div><!-- end steps -->


    <?xml version="1.0" encoding="utf-8"?>
<div class="paging">
</div>
        </div>
        </div><!-- container 끝 -->
    <div id="ticket_tnb" class="tnb_container ">
     	<div class="tnb step1">
     		<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
     		<a class="btn-right" id="okBtn" href="#" onclick="deliverInfo()" title="좌석선택">다음단계로 이동</a>
     	</div>
     </div> 
    </div>

            
		 </div>
		<!-- /Contents Area -->
	</div>
</div>


</body>
</html>