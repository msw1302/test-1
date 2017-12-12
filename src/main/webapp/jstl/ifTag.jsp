<%@ page contentType="text/html; charset=UTF-8" %>
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
<DIV class='container'>
<DIV class='content'>
 <c:if test="true">
    무조건 수행<br><br>
 </c:if>
 
 <!-- -------------------------------------- -->
 
 <c:if test="${param.code == 'A01' }">
  ${param.code }은 서울을 나타냅니다.<br><br>
 </c:if>
 <c:if test="${param.code != 'A01' }">
  ${param.code }은 서울이 아닙니다.<br><br>
 </c:if>
 
 <!-- -------------------------------------- -->
 
 <c:if test="${param.area != null }">
   개발 분야 ${param.area }<br><br>
 </c:if>
 
 <!-- -------------------------------------- -->
 
 <c:if test="${param.year >= 0 && param.year < 5}">
  자바 초급 개발자<br><br>
 </c:if>
 <c:if test="${param.year >= 5 && param.year < 10}">
  자바 중급 개발자<br><br>
 </c:if>
 <c:if test="${param.year >= 10 && param.year <= 12}">
  자바 고급 개발자<br><br>
 </c:if>
 <c:if test="${param.year > 12}">
 The JAVA(자바 그 자체)<br><br>
 </c:if>
 
 <!-- -------------------------------------- -->
 
</DIV> <!-- content END -->
</DIV> <!-- container END -->
</body>
 
</html> 