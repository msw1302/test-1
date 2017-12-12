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
 
 <c:forEach var="index" begin="1" end="10" step="1">
  <c:forEach var="index2" begin="1" end="10" step="1">
  ${index * index2}
  </c:forEach>
 </c:forEach>
 
 <%
 request.setAttribute("datas", new String[]{"java","jsp","spring"});
 %>
 
 <br><br>
 
 <c:forEach var="index" begin="0" end="3" step="1">
  ${datas[index]}
 </c:forEach>
 
 <br><br>
 
 <c:forEach var="item" items="${datas}" varStatus="stat">
  ${stat.count}.${item }
  </c:forEach>
</DIV> <!-- content END -->
</DIV> <!-- container END -->
</body>
 
</html> 