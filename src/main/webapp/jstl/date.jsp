<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
 
<link href="../css/style.css" rel="Stylesheet" type="text/css">
 
 
</head> 
 
 
<body>
<DIV class='container'>
<DIV class='content'>
<H1> 
  <jsp:useBean id="date" class="java.util.Date"/>
  <jsp:useBean id="time" class="java.util.Date"/>
 
  <fmt:formatDate value="${date }" pattern="yyyy-MM-dd" var="date"/>
  <fmt:formatDate value="${time }" pattern="HH:mm:ss" var="time"/>
  
  Today: ${date }<br><br>
    현재 시간: ${time }<br><br>
 
   <c:choose>
     <c:when test="${'07' == date.substring(8, 10)}">
       현재 날짜는 ${date.substring(8, 10)} 입니다.<br>
       ○ 드라이브가기<br><br>
     </c:when>
     <c:otherwise>
       현재 날짜에 일정이 없습니다.
     </c:otherwise>     
   </c:choose>
  
  
</H1> 
</DIV> <!-- content END -->
</DIV> <!-- container END -->
</body>
 
</html> 