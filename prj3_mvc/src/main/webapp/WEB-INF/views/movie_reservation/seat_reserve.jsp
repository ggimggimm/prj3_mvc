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

.nano {
    position: relative;
    width: 100%;
    height: 100%;
    overflow: hidden;
}

#ticket .section-date .col-body .date-list ul {
    width: 104px;
}
.nano .content {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    overflow: scroll;
}
/* ----------------------------------------------------------- 시작 */
/*.nano .content.scroll-y {
    overflow-x: hidden;
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
/*    스크롤 바아아앙ㅇㅇ아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
.nano > .pane, .nano > .pane-y, .nano > .pane-x {
    background: none;
}

.nano > .pane-y {
    width: 10px;
    top: 4px;
    bottom: 4px;
    right: 0;
}

.nano > .pane, .nano > .pane-y, .nano > .pane-x {
    background: rgba(0,0,0,.25);
    position: absolute;
    visibility: hidden\9;
    opacity: .01;
    -webkit-transition: .2s;
    -moz-transition: .2s;
    -o-transition: .2s;
    transition: .2s;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}

element.style {
    height: 50px;
    top: 0px;
}
.nano > .pane > .slider, .nano > .pane-y > .slider-y, .nano > .pane-x > .slider-x {
    background: #444;
    background: rgba(0,0,0,.5);
    position: relative;
    margin: 0px 2px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
}

.nano .slider-y {
    width: 6px;
}

element.style {
    display: none;
    opacity: 1;
    visibility: visible;
}

.nano.has-scrollbar-y .pane-x {
    margin-right: 6px;
}

.nano > .pane, .nano > .pane-y, .nano > .pane-x {
    background: none;
}

.nano > .pane-x {
    height: 10px;
    left: 4px;
    right: 4px;
    bottom: 0;
}

.nano > .pane, .nano > .pane-y, .nano > .pane-x {
    background: rgba(0,0,0,.25);
    position: absolute;
    visibility: hidden\9;
    opacity: .01;
    -webkit-transition: .2s;
    -moz-transition: .2s;
    -o-transition: .2s;
    transition: .2s;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}

element.style {
    width: 50px;
}

.nano > .pane-x > .slider-x {
    margin: 2px 0;
}

.nano > .pane > .slider, .nano > .pane-y > .slider-y, .nano > .pane-x > .slider-x {
    background: #444;
    background: rgba(0,0,0,.5);
    position: relative;
    margin: 0px 2px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
}

.nano .slider-x {
    height: 6px;
}

.nano .slider-y, .nano .slider-x {
    background: #acaba2;
}


 */
 
 #ticket .step1 .section-time {
    width: 346px;
    /* height: 528px; */
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

.nano {
    position: relative;
    width: 100%;
    height: 100%;
    overflow: hidden;
}

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

.tnb.step2 .btn-right.on {
    background-position: -150px -330px;
}

.tnb.step2 .btn-right {
    background-position: 0 -330px;
}

.tnb .btn-left, .tnb .btn-right {
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_buttons.png) no-repeat;
    background-position: 0 0;
    overflow: hidden;
    text-indent: -1000px;
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
    height: 400px;
    width: 992px;
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
    font-family: Helvetica Neue,Helvetica,Arial,sans-serif;
    font-weight: bold;
    font-size: 1.9em;
    color: #5a5a5a;
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

.nano {
    position: relative;
    width: 100%;
    height: 100%;
    overflow: hidden;
}


element.style {
    right: -17px;
    bottom: -17px;
}

.nano .content {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    overflow: scroll;
}

#ticket .section-seat .theater .screen {
    width: 100%;
    height: 25px;
    margin: 0 auto;
    line-height: 25px;
    text-align: center;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/screen_bg.png) repeat-x left;
}

#ticket .section-seat .theater .screen .text {
    width: 57px;
    height: 25px;
    display: inline-block;
    *display: inline;
    zoom: 1;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/screen_text.png) no-repeat;
}

#ticket .section-seat .theater .screen {
    width: 100%;
    height: 25px;
    margin: 0 auto;
    line-height: 25px;
    text-align: center;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/screen_bg.png) repeat-x left;
}


#ticket .section-seat .theater .seats {
    position: relative;
    margin: 56px auto 40px auto;
    height: 627px;
}


element.style {
    display: none;
    opacity: 1;
    visibility: visible;
}

.nano > .pane, .nano > .pane-y, .nano > .pane-x {
    background: none;
}

.nano > .pane-y {
    width: 10px;
    top: 4px;
    bottom: 4px;
    right: 0;
}
.nano > .pane, .nano > .pane-y, .nano > .pane-x {
    background: rgba(0,0,0,.25);
    position: absolute;
    visibility: hidden\9;
    opacity: .01;
    -webkit-transition: .2s;
    -moz-transition: .2s;
    -o-transition: .2s;
    transition: .2s;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}

#ticket .section-seat .theater .seats .row {
    position: absolute;
    height: 15px;
    line-height: 15px;
}

#ticket .section-seat .theater .seats .row .label {
    position: absolute;
    left: 0px;
    margin-bottom: 1px;
    width: 15px;
    height: 14px;
    line-height: 14px;
    border-top: 1px solid #d4d3c9;
    font-size: 11px;
    font-family: Verdana;
    font-weight: bold;
    text-align: center;
}

#ticket .section-seat .theater .seats .row a.skip_row {
    display: block;
    position: absolute;
    width: 80px;
    left: -1000px;
    top: -2px;
    background-color: #fff;
    padding: 3px;
    text-decoration: none;
    z-index: 1;
}

#ticket .section-seat .theater .seats .row .seat a {
    display: block;
    height: 100%;
    cursor: pointer;
    letter-spacing: -1px;
}

a {
    text-decoration: none;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    color: #333;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    background-color: #666;
    background-position: 1000px 1000px;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/seat_icons_20220314.png);
    background-repeat: no-repeat;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    display: block;
    width: 15px;
    height: 15px;
    line-height: 15px;
    overflow: hidden;
    text-align: center;
    color: #fff;
    font-size: 10px;
}

#ticket .section-seat .theater .seats .row .seat.selected a .no {
    background-color: #ad1712;
    background-position: 0 0;
}

/* 선택불가 */
#ticket .section-seat .theater .seats .row .seat.blocked a .no {
    background-color: #bbb;
    background-position: -25px 0;
    text-indent: -9999px;
}

#ticket .section-seat .theater .seats .row .seat.reserved a .no {
    background-color: #bbb;
    background-position: -1000px 0;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    background-color: #666;
    background-position: 1000px 1000px;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/seat_icons_20220314.png);
    background-repeat: no-repeat;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    display: block;
    width: 15px;
    height: 15px;
    line-height: 15px;
    overflow: hidden;
    text-align: center;
    color: #fff;
    font-size: 10px;
}
/* 선택불가 */

/* 예매완료 */
#ticket .section-seat .theater .seats .row .seat.reserved a .no {
    background-color: #bbb;
    background-position: -1000px 0;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    background-color: #666;
    background-position: 1000px 1000px;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/seat_icons_20220314.png);
    background-repeat: no-repeat;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    display: block;
    width: 15px;
    height: 15px;
    line-height: 15px;
    overflow: hidden;
    text-align: center;
    color: #fff;
    font-size: 10px;
}

/* 예매완료 */

/* 예매완료 */
#ticket .section-seat .theater .seats .row .seat {
    position: absolute;
    width: 16px;
    height: 15px;
}

#ticket .section-seat .theater .seats .row .seat a {
    display: block;
    height: 100%;
    cursor: pointer;
    letter-spacing: -1px;
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

#ticket .section-seat .theater .seats .row .seat.reserved a .no {
    background-color: #bbb;
    background-position: -1000px 0;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    background-color: #666;
    background-position: 1000px 1000px;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/seat_icons_20220314.png);
    background-repeat: no-repeat;
}

#ticket .section-seat .theater .seats .row .seat a .no {
    display: block;
    width: 15px;
    height: 15px;
    line-height: 15px;
    overflow: hidden;
    text-align: center;
    color: #fff;
    font-size: 10px;
}
/* 예매완료 */
/* 2023-0525 */

.tnb .btn-left {
    float: left;
    width: 106px;
    height: 108px;
    margin-right: 24px;
}
.tnb .info.movie .movie_poster {
    float: left;
    width: 74px;
    height: 108px;
    line-height: 108px;
    margin-right: 11px;
    overflow: hidden;
}
.tnb .info.movie .movie_poster img {
    width: 100%;
    vertical-align: middle;
}
.tnb .info .row .data.letter-spacing-min {
    letter-spacing: -0.5px;
}
.tnb .info.movie .row.movie_title {
    margin-top: 12px;
    display: none;
    font-size: 25px;
    font-style: bold;
    color : #FFF;
}
.data letter-spacing-min ellipsis-line2{
	letter-spacing: 10px;
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
.searchingMovieResult_wrap {
    margin-top: 60px;
    border-top: 1px solid rgba(216, 216, 216, 0.7);
}
.tnb .btn-left, .tnb .btn-right {
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_buttons.png) no-repeat;
    background-position: 0 0;
    overflow: hidden;
    text-indent: -1000px;
}
.tnb.step2 .btn-right {
    background-position: 0 -330px;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
#ticket .section-seat .theater_minimap .legend {
    position: absolute;
    top: 20px;
    right: 15px;
    width: auto;
    height: 100%;
}
#ticket .section-seat .seat-icon-desc .icon:first-child {
    margin-top: 0;
}
#ticket .section-seat .seat-icon-desc .icon {
    position: relative;
    display: block;
    margin-top: 8px;
    padding-left: 19px;
    height: 15px;
    color: #666;
    font-size: 12px;
}
#ticket .section-seat .seat-icon-desc .icon {
    position: relative;
    display: block;
    margin-top: 8px;
    padding-left: 19px;
    height: 15px;
    color: #666;
    font-size: 12px;
}
#ticket .section-seat .seat-icon-desc .icon.selected > span {
}
#ticket .section-seat .seat-icon-desc .icon > span {
    background-position: 0 0;
}
#ticket .section-seat .seat-icon-desc .icon > span {
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    width: 15px;
    height: 16px;
    padding: 0;
}
#ticket .section-seat .seat-icon-desc .icon > span {
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/seat_icons_20210617.png) no-repeat;
}
#ticket .section-seat .seat-icon-desc .icon {
    position: relative;
    display: block;
    margin-top: 8px;
    padding-left: 19px;
    height: 15px;
    color: #666;
    font-size: 12px;
}
#ticket .section-seat .seat-icon-desc {
	margin-top : 30px;
    margin-left: 5px;
    line-height: 15px;
}
#ticket .section-seat .seat-icon-desc .icon.reserved > span {
    background-color: #bbb;
    background-image: none;
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
            <!-- 서비스 메뉴 -->
           
			<!-- 서브 메뉴 -->
			
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

<script>

$(function() {
	
	//좌석 클릭 시 이벤트
	$(".seat").click(function() {
		
		if(!$(this).hasClass("reserved")) {
			
	    $(this).toggleClass("selected");
		}//end if
	
	//결제단계 버튼 활성화
	if ($('.seat.selected').length > 0) {
		
	      $('#tnb_step_btn_right').addClass('on');
	    }else if($('.seat.selected').length === 0) {
	    	$('#tnb_step_btn_right').removeClass('on');
	    }//end elseif
	});
	
	
	
});//ready



</script>

<script>
$(function() {
	// hidden의 값을 받을 배열생성
	var res = [];
	//히든의 갯수만큼 each를 돌려서 res에 각각의 값을 넣는다.
	$('input[type="hidden"]').each(function() {
	  res.push($(this).val());
	});
	  
	//class가 seat인 div를 each를 돌린다.
	$('.seat').each(function() {
	  //한번 돌릴때 마다 seatId를 생성해서 class가 seat인 div의 id를 seatId에 저장한다.
	  var seatId = $(this).attr('id');
	  
	  //seatId가 res배열에 포함되어 있다면 해당 class에 reserved를 추가한다.
	  if ($.inArray(seatId, res) !== -1) {
	    $(this).addClass('reserved');
	  }
	});
	  
});//ready


function ticketPay(m_num, watch_date,user_id, start_time) {
	
	if(!$('#tnb_step_btn_right').hasClass("on")) {
		alert("좌석을 선택해 주세요");
		return;
	}//end if
	
	if(confirm("해당 좌석을 예매하시겠습니까?")) {
		
	var m_num=m_num;
	var watch_date=watch_date;
	var start_time=start_time;
	var user_id=user_id;
	
	
	//선택한 자리를 받기위한 배열생성
	var seatData = [];
	
	$(".seat.selected").each(function() {
	  var seatId = $(this).attr("id");
	  
	  seatData.push(seatId);
	});
	
	
	
	var people=seatData.length;
	var price= 100 * people;
	
	
	var url="reserve_success.do?m_num="+m_num+"&watch_date="+watch_date+"&start_time="+start_time+"&user_id="+user_id+"&seatData="+seatData+"&people="+
			people+"&price="+price;
	
	location.href=url;
	
	}//end if
	
	
	
}//ticketpay

</script>


<script src="/WebResource.axd?d=O5F0dg69w2r38nWidHYzn3F_LoSxgzI-r_CxvaKM90QJYNm7EusOdLlLVPQdIrk6Xrhi_bPxR7gTuM63_-5osEN5N101&amp;t=636765788300000000" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=vLDCNIe58OYCp1IBznLOa_7ELQjFZW7qqCtHGjAoJN9G2a2Qoq_JYgpEes8D2_T9DfwTzV1rsPeeiifVB5MYJPzLqJmctD5iSrTyPcuVrYGC5-iA6RANgXkCerthNVAps74VQ-OSHkjbo7ldw9keOP3Zh7I1&amp;t=ffffffff999c3159" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=mizHOlpiVKV2a1df2yfQWN7BiqRY8me6FhRswTmihxriWROjj-dr8iQK9KXpa6Y2RlWnBj5emUfLX_yU6zzvBNvwwL6oRDyN9QNB5D8GLyR6V95X20QLdH1dY1G4cGxhkighz3yJZqs6U8L5LEwDEdmwyfBw44BOgCWFY4TGtKfYaE8k0&amp;t=ffffffff999c3159" type="text/javascript"></script>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="59A49A67" />
</div>
<!-- <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$PlaceHolderContent$ScriptManager1', 'aspnetForm', [], [], [], 90, 'ctl00');
//]]>
</script>
 --> 
</form>
 <!-- 실컨텐츠 시작 -->
    <div class="search_wrap">
        <div class="searchingMovieResult_wrap" id ="searchMovieResult">
	<div id="container" style="margin-top: 100px;">					
	<div id="ticket" class="ticket ko">
		<div class="steps">
		
		
		<!-- step2시작 -->
		<div class="step step2" style="display: block;">
			<div class="section section-seat dimmed">
				<div class="section section-seat dimmed">
					<div class="col-head" id="skip_seat_list"></div>
					<div class="col-body">
						<div class="person_screen">
							<div class="section section-screen-select">
								<div id="user-select-info">
									<p class="playYMD-info"><b>${ riVO.current_year }.${ riVO.current_month }.${ riVO.watch_date }.</b><b class="exe">(${ riVO.day_week })</b><b>${ riVO.start_time }</b></p>
								</div>
							</div>
						</div>
						<div class="theater_minimap">
							<div class="theater nano has-scrollbar" id="seat_minimap_nano">
									<div class="content" tabindex="-1" style="right: -17px; bottom: -17px;">
										<div class="screen" title="SCREEN" style="width: 652px;"><span class="text"></span></div>
										<div class="seats" id="seats_list" style="width: 192px; height: 192px;">
											<div>
											
											<!-- 예약된 좌석 꺼내오기 -->
											<c:forEach begin="1" end="${ seats.size() }" varStatus="hv">
											<input type="hidden" id="reserved${ hv.index }" value="s${seats[hv.index-1].h_seat}${seats[hv.index-1].v_seat}"/>
											</c:forEach>
											<!-- 예약된 좌석 꺼내오기 -->
											
											<!-- 좌석 보여주기 -->
											<c:forEach begin="1" end="6" varStatus="row" >
    										<div class="row" style="top:${ row.index * 16 }px;">
        										<div class="label">${ row.index }</div>
        												<c:forEach begin="1" end="10" varStatus="col" >
            												<div class="seat" style="left:${ col.index * 16 }px" id="s${ row.index }${ col.index }" data-left_zoom="24">
               													 <a href="#" onclick="return false;">
                   												 <span class="no">${ col.index }</span>
                    											<span class="sreader"></span>
                    											<span class="sreader mod"></span>
                												</a>
            												</div>
        												</c:forEach>
    										</div>
											</c:forEach>
											<!-- 좌석 보여주기 -->
											
											</div>
										<div class="exit top" style="top: -30px; left: 162px;"></div>
										</div>
									</div>
									
								<div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;">
									<div class="slider slider-y" style="height: 50px;"></div>
								</div>
								<div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div>
								</div>
							</div>
								<div class="legend" style="width: 125px;">
									<div class="seat-icon-desc">
										<span class="icon selected"><span class="icon"></span>선택</span>
										<span class="icon reserved"><span class="icon"></span>예매완료</span>
									</div>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	 <!-- end steps2 -->

        </div>
        </div><!-- container 끝 -->
    </div>
		 </div>
        
        <div id="ticket_tnb" class="tnb_container">
		<div class="tnb step2">
			<!-- btn-left -->
			<a class="btn-left" href="javascript:history.back()" onclick="OnTnbLeftClick(); return false;" title="영화선택">이전단계로 이동</a>
			<div class="info movie">
				<span class="movie_poster"><img src="images/${ mInfo.poster }" alt="영화 포스터" /></span>
				<div class="row movie_title colspan2" style="display: block;">
					<span class="data letter-spacing-min ellipsis-line2">${ mInfo.m_title }</span>
				</div>
				<div class="placeholder" title="영화선택" style="display: none;"></div>
			</div>
			<div class="info theater">
				<div class="placeholder" title="극장선택" style="display: none;"></div>
			</div>
			<div class="info path">
				<div class="row colspan4">
					<span class="path-step2" title="좌석선택">&nbsp;</span>
					<span class="path-step3" title="결제">&nbsp;</span>
				</div>
			</div>
			<!-- btn-right -->
			<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
			<a class="btn-right" id="tnb_step_btn_right" href="#" onclick="ticketPay('${riVO.m_num}','${riVO.watch_date}','${lrDomain.user_id}','${riVO.start_time}')" title="예매완료"></a>
		</div>
	</div>

            
		<!-- /Contents Area -->
    <div class="fixedBtn_wrap">
        <a href="#none" class="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동" /></a>
    </div>
    <!-- TOP Fixed 버튼 -->
    
</div>


</body>
</html>