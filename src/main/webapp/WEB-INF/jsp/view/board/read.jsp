<%--
 * First Editor : Donghyun Seo (egaoneko@naver.com)
 * Last Editor  :
 * Date         : 2015-03-23 | 오전 10:07
 * Description  :
 * Copyright ⓒ 2013-2015 Donghyun Seo All rights reserved.
 * version      :
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>글 읽기</title>
</head>
<body>
<table>
    <tr>
        <td>제목</td>
        <td>${boardVO.title}</td>
    </tr>
    <tr>
        <td>작성자</td>
        <td>${boardVO.userEmail}</td>
    </tr>
    <tr>
        <td>작성일</td>
        <td><fmt:formatDate value="${boardVO.postingDate}" pattern="yyyy-MM-dd"/></td>
    </tr>
    <tr>
        <td>내용</td>
        <td>
            ${boardVO.content}
        </td>
    </tr>

    <tr>
        <td colspan="2">
            <a href="list.do?s=${param.s}&p=${param.p}">목록보기</a>
            <a href="reply.do?s=${param.s}&p=${param.p}&parentBoardNumber=${boardVO.number}">답변하기</a>
            <a href="update.do?s=${param.s}&p=${param.p}&boardNumber=${boardVO.number}">수정하기</a>
            <form action="<c:url value="delete.do" />" method="post">
                <input type="hidden" name="p" value="${param.p}"/>
                <input type="hidden" name="s" value="${param.s}"/>
                <input type="hidden" name="boardNumber" value="${boardVO.number}"/>
                <input type="submit" value="삭제하기" >
            </form>
        </td>
    </tr>
</table>

<!-- 댓글 구현부 -->
<jsp:include page="/WEB-INF/jsp/view/comment/listAll.jsp"/>

</body>
</html>
