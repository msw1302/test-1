<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="sts.basic.test.ELDTO" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>
<DIV class='container'>
<DIV class='content'> 
  <%
    ELDTO dto = new ELDTO();
    request.setAttribute("dto", dto);
  %>
  
  스크립틀릿 출력<br>
  <%
  ELDTO eldto =  (ELDTO)request.getAttribute("dto");
  %>
  영화명: <%=eldto.getMovie() %><br>
  주   연: <%=eldto.getName() %><br>
  <br>
  EL 출력<BR>
   영화명: ${dto.getMovie()}<br>
   주   연: ${dto.getName()}<br>
 
</DIV> <!-- content END -->
</DIV> <!-- container END -->
</body>
</html>