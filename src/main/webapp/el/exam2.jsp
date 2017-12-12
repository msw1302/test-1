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
  
/*   request.setAttribute("no1", 100);
  request.setAttribute("no2", 130);
  request.setAttribute("no3", 150); */
  %>
 
  EL<br>
  
    <%-- 수1: ${no1}<br>
    수2: ${no2}<br>
    수3: ${no3}<br>
    총점: ${no1+no2+no3}<br>
    평균: ${((no1+no2+no3)/3)}<br> --%>
  
  ${dto.getResultTot()}<br>
  ${dto.getResultAvg()}<br>
  <br>
  스크립틀릿<br>
  <%
  Integer no1 = (Integer)request.getAttribute("no1");
  Integer no2 = (Integer)request.getAttribute("no2");
  Integer no3 = (Integer)request.getAttribute("no3");
  Integer no4 = no1+no2+no3;
  float no5 = (float)no4/3;
  %>
  수1: <%=no1 %><br>
  수2: <%=no2 %><br>
  수3: <%=no3 %><br>
  총점: <%=no4 %><br>
  평균: <%=no5 %><br>
  
</DIV> <!-- content END -->
</DIV> <!-- container END -->
</body>
</html>