<%-- 
    Document   : create
    Created on : 5 черв. 2024 р., 20:21:40
    Author     : sasha
--%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ISoWS: Create Vacancy</title>
        <link rel="stylesheet" href="<c:url value='/resources/css/styles.css'/>"/>
    </head>
    <body>
        <div class="pageWrapper">
            <div class="mainContainer">
                <header>
                    <nav>
                        <a class="homeLink" href="${pageContext.request.contextPath}/vacancies"><img src="<c:url value='/resources/img/home.png'/>" alt="home icon"/></a>
                        <form action="search" method="GET">
                            <input type="text" name="searchText" placeholder="Search...">
                            <input type="hidden" name="command" value="search">
                            <input type="submit" value="Search">
                        </form>
                        <a href=""><img src="<c:url value='/resources/img/account.png'/>" alt="profile icon"/></a>
                    </nav>
                </header>
                <form action="vacancies" method="POST" style="display:flex;flex-direction: column">
                    <input type="text" name="title" placeholder="Yout vacancy's title...">
                    <textarea name="description" placeholder="Describe your vacancy here."></textarea>
                    <input type="hidden" name="command" value="create">
                    <input type="submit" value="Create">
                </form>
            </div>
        </div>
    </body>
</html>
