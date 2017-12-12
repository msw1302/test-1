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

<%
session.setAttribute("name", "아로미");
session.setAttribute("id", "aromi1004");
%>

  <c:forEach var="name" items="${pageContext.session.attributeNames}">
      Name: ${name}
      Value: ${sessionScope[name]}
      <br>
  </c:forEach> 
  <br>  
  로그인된 ID: ${sessionScope.id}
  <br>
  <c:if test="${sessionScope.id ne null }">
    로그인된 사용자 메뉴 출력 영역
  </c:if><br>
 
 
</DIV> <!-- content END -->
</DIV> <!-- container END -->
</body>
 
</html> 