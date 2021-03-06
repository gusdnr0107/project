<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 쓰기 페이지</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/postWritePage.js"></script>
<link rel="stylesheet" href="resources/css/postWritePage.css">
</head>
<body>
    <div> <!--글 쓰기 DIV START-->
		<!-- 수정하기로 들어올때 게시글 번호를 input에 저장 -->
    	<input id="post_code" type="hidden" value="${param.post_code}">
    	
    	<div id="writerDiv">
    		<label>작성자 : ${sessionScope.id}</label>
    	</div>
    
        <div id="categoryDiv">
            <label>글 분류 : </label>
            <select id="board_code">
                <option value="1">자유</option> <!-- 자유 게시판-->
                <option value="2">문의</option> <!-- 문의 게시판-->
            </select>
        </div>

        <div id="titleDiv">
            <label>제목 : </label>
            <input type="text" id="post_title"/>
        </div>

        <div id="contentDiv">
            <label>내용 : </label>
            <textarea id="post_content"></textarea>
        </div>

        <div>
            <input type="button" id="registerPost" value="작성완료"/>
            <input type="button" id="postCancel" value="취소"/>
        </div>

    </div> <!--글 쓰기 DIV END-->
</body>
</html>