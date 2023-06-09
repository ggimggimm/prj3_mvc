<%@page import="kr.co.sist.prj3.user.login.domain.LoginResultDomain"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("lrDomain")==null) {
	String msg="<script>alert('로그인 후 이용해 주세요');  location.href='login.do'</script>";
	out.print(msg);
}
%>