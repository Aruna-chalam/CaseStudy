<%-- <!doctype html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous">

<title>Team Member</title>
<style>
.center{
width:1000px;
margin:auto;
margin-top:30px;
margin-bottom:10px;}
.btn-block {
      margin-top: 20px;
      text-align: center;
}
</style>
</head>
<body >
<div class="center">
<h3 align="center" class="center">Complaints assigned to You</h3>
      <table border="1" class="table">
            <thead>
                  <tr>
                        <th scope="col">Ticket Id</th>
                        <th scope="col">Type of Ticket</th>
                        <th scope="col">Description</th>
                        <th scope="col">ContactNumber</th>
                        <th scope="col">WorkLocation</th>
                        <th scope="col">Priority</th>
                        <th scope="col">Status</th>

                  </tr>
            </thead>
            <tbody>
                  <c:if test="${not empty tickets}">
				<c:forEach var="listValue" items="${tickets}">
					<tr>
						<td><a href="/viewTicket/${listValue.getId()}">${listValue.getId()}</a></td>
						<td>${listValue.typeOfTicket}</td>
						<td>${listValue.description}</td>
						<td>${listValue.contactNo}</td>
						<td>${listValue.workLocation}</td>
						<td>${listValue.status}</td>							
						<td>${listValue.priority}</td>
					</tr>
				</c:forEach>

			</c:if>

            </tbody>
      </table>
      <p class="center">If you have any complaint click <a href="/create">Here</a></p>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
      <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
      <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
            </div>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Complaints</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no">

 <link rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous">
 
<style>
.center{
width:1000px;
margin:auto;
margin-top:30px;
margin-bottom:10px;}

tr:nth-child(even) {
background-color: #f2f2f2;
}
</style>

</head>
<body>
<div class="center">
<h4 class="center">Complaints assigned to You</h4>
      <table border="1" bordercolor="moccasin" class="table">
            <thead>
                  <tr style="background-color:lightcoral;color:white;">
                        <th scope="col">Ticket Id</th>
                        <th scope="col">Type of Ticket</th>
                        <th scope="col">Description</th>
                        <th scope="col">Contact Number</th>
                        <th scope="col">Work Location</th>
                        <th scope="col">Priority</th>
                        <th scope="col">Status</th>
                  </tr>
            </thead>
            <tbody>
                <c:if test="${not empty tickets}">
                              <c:forEach var="listValue" items="${tickets}">
                                    <tr>
                                          <td><a href="/viewTicket/${listValue.getId()}">${listValue.getId()}</a></td>
                                          <td>${listValue.typeOfTicket}</td>
                                          <td>${listValue.description}</td>
                                          <td>${listValue.contactNo}</td>
                                          <td>${listValue.workLocation}</td>
                                          <td>${listValue.priority}</td>
                                          <td>${listValue.status}</td>
                                    </tr>
                              </c:forEach>

                        </c:if>
                  

            </tbody>
      </table>
           <p class="center">If you have any complaint click <a href="/create">Here</a></p>
            </div>

</body>
</html>

