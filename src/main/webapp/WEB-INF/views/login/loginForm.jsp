<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.104.2">
    <title>log in</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.2/examples/sign-in/">

    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/images/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/images/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/images/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/images/manifest.json">

    <link rel="mask-icon" href="/images/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="/images/favicon.ico">
    <meta name="theme-color" content="#712cf9">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="/css/signin.css" rel="stylesheet">
</head>
<body class="text-center">

<main class="form-signin w-100 m-auto">
    <form action="/login" name="loginForm" method="post">
        <input type="hidden" name="redirectURL" value="${param.redirectURL}">
        <img class="mb-4" src="/images/member.jpg" alt="No Image" width="200" height="100">
        <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

        <div class="form-floating">
            <input type="test" class="form-control" name="id" id="floatingInput" placeholder="id" value="${user.id}">
            <label for="floatingInput">Id</label>
        </div>
        <div style="color:red;">
            <spring:hasBindErrors name="user">
                <c:if test="${errors.hasFieldErrors('id')}">
                    ${errors.getFieldError('id').defaultMessage}
                </c:if>
            </spring:hasBindErrors>
        </div>

        <div class="form-floating">
            <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="Password" value="${user.password}">
            <label for="floatingPassword">Password</label>
        </div>
        <div style="color:red;">
            <spring:hasBindErrors name="user">
                <c:if test="${errors.hasFieldErrors('password')}">
                    ${errors.getFieldError('password').defaultMessage}
                </c:if>
            </spring:hasBindErrors>
        </div>

        <div class="checkbox mb-3">

            <label style="font-size: 20px;">
                <c:choose>
                    <c:when test="${user.rememberUserInfo}">
                        <input type="checkbox" name="rememberUserInfo" id="rememberMeId" checked> Remember me
                    </c:when>
                    <c:otherwise>
                        <input type="checkbox" name="rememberUserInfo" id="rememberMeId"> Remember me
                    </c:otherwise>
                </c:choose>
            </label>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit">Sign In</button>
        <input type="button" id="signInButton" class="w-100 btn btn-lg btn-primary" style="margin-top: 10px" value="Sign Up">
    </form>
</main>

<script src="/js/login.js"></script>

<script>

    document.addEventListener("DOMContentLoaded", function() {
        <c:if test="${param.completedWithSigningUp}">
            alert("회원가입을 완료하셨습니다.")
        </c:if>
    })

    document.getElementById("signInButton").addEventListener("click", () => {
        location.href = "/signUp";
    })


</script>

</body>
</html>
