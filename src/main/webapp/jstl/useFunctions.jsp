<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>함수 사용</title></head>
<link href="../css/style.css" rel="Stylesheet" type="text/css">
<body>
  <c:set var="str1" value="Functions <태그>를 사용합니다. " />
  <c:set var="str2" value="사용" />
  <c:set var="str3" value="<TABLE><TR><TD> 태그의 이용" />
  <c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10" />
 
  문자열 길이: length(str1) = ${fn:length(str1)} <br>
  대문자로: toUpperCase(str1) = "${fn:toUpperCase(str1)}" <br>
  소문자로: toLowerCase(str1) = "${fn:toLowerCase(str1)}" <br>
  문자열 index 3 ~ 5까지 추출: substring(str1, 3, 6) = "${fn:substring(str1, 3, 6)}" <br>
  str1에서 str2이후의 문자 추출: substringAfter(str1, str2) = "${fn:substringAfter(str1, str2)}" <br>
  str1에서 str2이전의 문자 추출: substringBefore(str1, str2) = "${fn:substringBefore(str1, str2)}" <br>
  좌우 공백 제거: trim(str1) = "${fn:trim(str1)}" <br>
  특정 문자를 교체: replace(str1, src, dest) = "${fn:replace(str1, " ", "-")}" <br>
  str1에서 str2의 시작 위치 산출: indexOf(str1, str2) = "${fn:indexOf(str1, str2)}" <br>
  str1이 Fun으로의 시작 여부: startsWith(str1, str2) = "${fn:startsWith(str1, 'Fun')}" <br>
  str1이 "합니다.로 끝나는지 여부: "endsWith(str1, str2) = "${fn:endsWith(str1, "합니다.")}" <br>
  str1이 str2를 포함 여부: contains(str1, str2) = "${fn:contains(str1, str2)}" <br>
  대소문자 구분없이  str1이 str2를 포함 여부: containsIgnoreCase(str1, str2) = "${fn:containsIgnoreCase(str1, str2)}" <br>
 
  <c:set var="array" value="${fn:split(tokens, ',')}" /> <!-- 특정 문자로 분할 -->
 
  배열값을 지정된 문자열로 연결: join(array, "-") = "${fn:join(array, "-")}" <br>
  HTML 태그 그대로 출력: escapeXml(str1) = "${fn:escapeXml(str3)}" <br>
 
</body>
</html>