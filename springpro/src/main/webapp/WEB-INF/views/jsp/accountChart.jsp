<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>22</h2>
	    <table border="3">
       <th></th>
      <c:forEach var="userId" items="${userIdList}">
          <th>${userId}</th><!-- 맨 윗줄 -->
      </c:forEach>
      <th>총수량</th>
      <th>현재가</th>
      <th> </th>
      <c:forEach var="item" items="${itemList}">
      <tr>
      <td>${item.item_code}</td>
         <c:forEach var="userId" items="${userIdList}">
            <td>
            <c:forEach var="account" items="${accountList}">
            <c:choose>
               <c:when test="${item.item_code eq account.item_code and account.user_id eq userId}">
                     ${account.outstand_amount}
               </c:when>
               <c:otherwise> 
               </c:otherwise>
            </c:choose>
            
            </c:forEach>
            </td>  
         </c:forEach>
             <td>${item.total_amount}</td>
            <td>${item.cur_price}</td>
            <td>${item.update_time}</td>
               </tr>
      </c:forEach>
   
      </table>
	
</body>
</html>