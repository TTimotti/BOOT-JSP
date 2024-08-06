<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 사이드바 내용 -->
<ul>
    <li>
    	<a href="#" class="dropdown">
    		<span class="menu-title">관리자 메뉴</span>
   		</a>
    	<ul class="dropdown-menu">
    		<li>
    			<a href="<c:url value="/admin/list" />">
    				<span class="menu-inner">관리자 목록</span>
   				</a>
    		</li>
    		<li>
    			<a href="<c:url value="/admin/insert" />">
    				<span class="menu-inner">관리자 등록</span>
   				</a>
    		</li>    	
    	</ul>
   	</li>
    <li>
    	<a href="#" class="dropdown">
    		<span class="menu-title">사용자 메뉴</span>
   		</a>
    	<ul class="dropdown-menu">
    		<li>
    			<a href="<c:url value="/user/main" />">
    				<span class="menu-inner">메인 화면</span>
   				</a>
    		</li>
    		<li>
    			<a href="<c:url value="/user/mypage" />">
    				<span class="menu-inner">마이페이지</span>
   				</a>
    		</li>
    	</ul>
   	</li>
</ul>