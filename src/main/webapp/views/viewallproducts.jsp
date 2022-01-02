<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="adminbasic.jsp"></jsp:include><br><br><br><br><br><br>
<table align=center border=1>
<tr>
<td>ID</td>
<td>NAME</td>
<td>Description</td>
<td>Price</td>
<td>ACTION</td>
</tr>
 <c:forEach var="p" items="${pdata}">
<tr>
<td>${p.id}</td>
<td>${p.name}</td>
<td>${p.description}</td>
<td>${p.price}</td>
<td><a href="/product/delete/${p.id}">delete</a></td>
</tr>
</c:forEach>
</table>

