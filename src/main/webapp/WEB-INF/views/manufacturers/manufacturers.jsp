<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/index">Taxi Service</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link"  href="${pageContext.request.contextPath}/index">Home</a>
        <a class="nav-link" href="${pageContext.request.contextPath}/cars">Cars</a>
        <a class="nav-link" href="${pageContext.request.contextPath}/drivers">Drivers</a>
        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
      </div>
      <div class="navbar-nav ms-auto">
        <a class="nav-link" href="${pageContext.request.contextPath}/logout">Logout</a>
      </div>
    </div>
  </div>
</nav>
<div class="container">
  <c:choose>
    <c:when test="${empty(manufacturersList)}">
      No manufacturers currently in database.
    </c:when>
    <c:otherwise>
      <table class="table table-hover table-bordered">
        <caption>List of manufacturers</caption>
        <thead class="table-dark"><tr>
          <th scope="col">ID</th>
          <th scope="col">Name</th>
          <th scope="col">Country</th>
          <th scope="col">Action</th>
        </tr></thead>
        <c:forEach items="${manufacturersList}" var="manufacturer">
          <tr>
            <th scope="row"><c:out value="${manufacturer.id}" /></th>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?manufacturerId=${manufacturer.id}">Delete</a></td>
          </tr>
        </c:forEach>
      </table>
    </c:otherwise>
  </c:choose>
  <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/manufacturers/add" role="button">Add manufacturer</a>
</div>
</body>
</html>
