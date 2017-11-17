<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Beer List</title>
</head>
<body>
<c:set var="sessionList" scope="session" value="${sessionList}, ${param.color} " />
<h1 align="center">The beer corlor that you selected is ${param.color}.</h1>
<b><a href="SelectedBeerColor.jsp">(View the selected beer colors).</a></b>
<p><b>Choose following information:</b></p>
<form method="post" action="ShoppingCart.do">
    <c:set var="itemList" value="The light beer of China;The amber beer of China;The beer of American" />
    <c:set var="delim" value=";"/>
    <c:set var="items" value="${fn:split(itemList, delim)}"/>
    <table width="500" border="0" cellspacing="0" cellpadding="0">
    <c:forEach var="item" items="${items}" varStatus="itemLoopCount">
      <tr>
        <td width="69">
          <input type="checkbox" name="item" value="${item}">
        </td>
        <td width="431">Item${itemLoopCount.count}: ${item}</td>
      </tr>
    </c:forEach>
    <%--<tr> --%>
      <%--<td width="69"> --%>
        <%--<input type="checkbox" name="item" value="The light beer of China">--%>
      <%--</td>--%>
      <%--<td width="431">Item1: The light beer of China</td>--%>
    <%--</tr>--%>
    <%--<tr> --%>
      <%--<td width="69">--%>
        <%--<input type="checkbox" name="item" value="The amber beer of China">--%>
      <%--</td>--%>
      <%--<td width="431">Item2: The amber beer of China</td>--%>
    <%--</tr>--%>
    <%--<tr> --%>
      <%--<td width="69">--%>
        <%--<input type="checkbox" name="item" value="The beer of American">--%>
      <%--</td>--%>
      <%--<td width="431">Item3: The beer of American</td>--%>
    <%--</tr>--%>
  </table>
  <hr>
  <p>
  <center> 
    <input type="submit" name="btn_submit" value="Buy Now">
  </center>
</form>
</body>
</html>