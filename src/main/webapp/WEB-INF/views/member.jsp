<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Please sign in</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet" integrity="sha384-oOE/3m0LUMPub4kaC09mrdEhIc+e3exm4xOGxAmuFXhBNF4hcg/6MiAXAf5p0P56" crossorigin="anonymous"/>
</head>
<body>
<div class="container">
	<div class="bg-body-tertiary p-5 rounded" style="background:#fff">
		<h1>Member영역</h1>
		<p class="lead">ADMIN or USER권한이 있어야 접근할 수 있습니다.</p>
		<p>
		<s:authorize access="isAuthenticated()">
			로그인 아이디 : <s:authentication property="name"/><br />
		</s:authorize>
		
		<s:authorize access="hasRole('ADMIN')">당신은 관리자입니다.</s:authorize>
		<s:authorize access="hasRole('USER')">당신은 유저입니다.</s:authorize>
		</p>
		<a class="btn btn-lg btn-primary" href="/index.jsp" role="button">인덱스로 이동</a>
	</div>
</div>
</body>
</html>