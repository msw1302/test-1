<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css">
  *{ font-size: 28px;}
</style>
</head> 
 
<body>
 
<DIV class='content'>
  Context Path: <%=request.getContextPath() %>
  <br><br>
  <%
  request.setAttribute("name", "Spring 개발자");
  %>
  
 1.스크립틀릿 : <%=(String)request.getAttribute("name")%> <br>
 2.EL(requestScope) : ${requestScope.name}<br>
 3.EL : ${name}<br>
</DIV>
 
</body>
 
</h.tml>
