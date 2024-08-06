<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <tiles:insertAttribute name="head"/>
</head>
<body>
    <header>
        <tiles:insertAttribute name="header"/>
    </header>    
    <main id="container">
	    <aside>
	        <tiles:insertAttribute name="aside"/>
	    </aside>
	    <article>
        	<tiles:insertAttribute name="contents"/>
        </article>
    </main>    
    <footer>
        <tiles:insertAttribute name="footer"/>
    </footer>
</body>
</html>
