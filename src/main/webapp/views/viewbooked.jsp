<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<table align=center border=1>
<tr>
<td>ID</td>
<td>FIRST NAME</td>
<td>LAST NAME</td>
<td>PHONE NUMBER</td>
<td>ADDRESS</td>
<td>ITEM</td>
<td>DATE</td>
<td>TIME</td>
</tr>
 <c:forEach var="emp" items="${data}">
<tr>
<td>${emp.id}</td>
<td>${emp.firstname}</td>
<td>${emp.lastname}</td>
<td>${emp.phonenumber}</td>
<td>${emp.address}</td>
<td>${emp.item}</td>
<td>${emp.date}</td>
<td>${emp.time}</td>

<td><a href="/book/delete/${emp.id}">Cancel</a></td>
</tr>
</c:forEach>
</table>

