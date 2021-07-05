<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Login</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">
</head>
<body>
<div class="container">
  <form method="post" action="${pageContext.request.contextPath}/login">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
    <h4 style="color: red">${errorMsg}</h4>
    <div class="form-floating">
      <input type="text" class="form-control" id="login" name="login" placeholder="Login">
      <label for="login">Login</label>
    </div>
    <br>
    <div class="form-floating">
      <input type="password" class="form-control" id="password" name="password" placeholder="Password">
      <label for="password">Password</label>
    </div>
    <br>
    <a class="btn btn-lg btn-primary" href="${pageContext.request.contextPath}/register">Register</a>
    <button class="btn btn-lg btn-success" type="submit">Sign in</button>
  </form>
</div>
</body>
</html>
