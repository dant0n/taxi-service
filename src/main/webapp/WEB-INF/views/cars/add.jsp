<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Add car</title>
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
        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/cars">Cars</a>
        <a class="nav-link" href="${pageContext.request.contextPath}/drivers">Drivers</a>
        <a class="nav-link" href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
      </div>
      <div class="navbar-nav ms-auto">
        <a class="nav-link" href="${pageContext.request.contextPath}/logout">Logout</a>
      </div>
    </div>
  </div>
</nav>
<div class="container">
  <h2>Add car to DB:</h2>
  <form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label for="model">Model: </label><br>
    <input class="form-control" type="text" id="model" name="model" required><br>
    <label for="manufacturer">Choose a manufacturer:</label><br>
    <select class="form-select" id="manufacturer" name="manufacturerId" required>
      <c:forEach items="${manufacturersList}" var="manufacturer">
        <option value="${manufacturer.id}">${manufacturer.name}</option>
      </c:forEach>
    </select><br>
    <button type="submit" class="btn btn-outline-primary">Add</button>
  </form>
</div>
</body>
</html>
