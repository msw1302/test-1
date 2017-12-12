<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
 
<link href="../css/style.css" rel="Stylesheet" type="text/css">
 
</head> 
<body>
 
  <%
  // String fname = "";
  String fname = "winter.jpg";
  request.setAttribute("fname", fname);
  %>
 
  <%-- 파일명이 있으면 파일명 출력 --%>
  <c:if test="${fn:length(fname) > 0 }">
    1. 파일명: ${fname }<br>
  </c:if>
  <c:if test="${fn:length(fname) <= 0 }">
    1. 등록된 파일이 없습니다.<br>
  </c:if>
 
  <c:choose>
    <c:when test="${fn:length(fname) > 0 }">
      2. 파일명: ${fname }<br>
    </c:when>
    <c:when test="${fn:length(fname) <= 0 }">
      2. 등록된 파일이 없습니다.<br>
    </c:when>
    <c:otherwise>
    </c:otherwise>
  </c:choose>
  
  <br>
  문자열 길이: ${fname.length() }<br>
  부분 문자열 길이: ${fname.substring(0, 3) }<br><br>
  <c:if test="${fname.length() > 0 }">
    if 문 EL 문자열 함수 사용: ${fname }
  </c:if>
  <br>----------------------------------------------<br>
  <br>
  이미지 문자열 비교<br>
  <%
  request.setAttribute("ext", "winter.GIF000000000000000");
  %>
  <c:set var='ext_sw' value="${fn:endsWith(ext, '.jpg')}" />
    대소문자 비교: ext: ${ext_sw}
  <br><br>
  <c:choose>
    <c:when test="${fn:endsWith(fn:toLowerCase(ext), '.jpg')}">
      JPG 이미지입니다.
    </c:when>
    <c:when test="${fn:endsWith(fn:toLowerCase(ext), '.gif')}">
      GIF 이미지입니다.
    </c:when>
    <c:when test="${fn:endsWith(fn:toLowerCase(ext), '.png')}">
      PNG 이미지입니다.
    </c:when>
    <c:otherwise>
      이미지가 아닙니다.
    </c:otherwise>
  </c:choose>
  <br>
  <br>----------------------------------------------<br>
  null 체크<br>
  <%
  // request.setAttribute("name", null);
  request.setAttribute("name", null); // 주석 처리후 테스트
  %>
  1. null 출력: ${name }<br>
  <c:if test="${name eq null }">
    2. name은 null 입니다.
  </c:if><br>
  <c:if test="${name ne null }">
    3. name은 null이 아닙니다.
  </c:if><br>
  <c:if test="${name == null }">
    4. name은 null 입니다.
  </c:if><br>
  <c:if test="${name != null }">
    5. name은 휴그랜트입니다.
  </c:if><br>
 
 
</body>
</html> 