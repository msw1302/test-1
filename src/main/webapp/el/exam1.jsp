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
 EL 출력<br>
 수1: ${param.su1+50}<br>
 수2: ${param.su2+50}<br>
 수3: ${param.su3+50}<br>
 <br> 
 스크립틀릿 출력<br>
 수1: <%=Integer.parseInt(request.getParameter("su1"))+50 %><br>
 수2: <%=Integer.parseInt(request.getParameter("su2"))+50 %><br>
 수3: <%=Integer.parseInt(request.getParameter("su3"))+50 %><br>
<br>
</DIV> <!-- content END -->
</DIV> <!-- container END -->
</body>
</html>