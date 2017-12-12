<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 페이지 디렉티브 라고 함 -->
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
 
 <c:set var="img" value="<img src='./images/bu5.gif'>"/>
 
 ${img } JAVA <BR>
 ${img } JSP <BR>
 ${img } SPRING <BR>
 ${img } OJT <BR>
 
</DIV> <!-- content END -->
</DIV> <!-- container END -->
</body>
 
</html>