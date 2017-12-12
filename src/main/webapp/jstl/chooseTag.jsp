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
   <c:choose>
     <c:when test="${param.year <= 5 }">
       초급 개발자 입니다.<br><br>
     </c:when>
     <c:when test="${param.year >= 6 && param.year <= 8 }">
       중급 개발자 입니다.<br><br>
     </c:when>
     <c:when test="${param.year >= 9 && param.year <= 11 }">
       고급 개발자 입니다.<br><br>
     </c:when>
     <c:when test="${param.year >= 12 }">
       특급 개발자.<br><br>
     </c:when>
     <c:otherwise>
       개발 등급이 없습니다.
     </c:otherwise>     
   </c:choose>
  
</DIV> <!-- content END -->
</DIV> <!-- container END -->
</body>
 
</html> 