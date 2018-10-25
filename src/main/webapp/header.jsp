<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>GADGET NATION</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="width:100;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">Gadget Nation</a>
    </div>
    <ul class="nav navbar-nav">
     <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
      <li class="active"><a href="AddProduct.jsp">AddProduct</a></li>
       <li><a href="AddCategory.jsp">AddCategory</a></li>
       <li><a href="UserINFO.jsp">ViewUsers</a></li>
       </c:if>
      <li><a href="ViewProducts.jsp">Products</a></li>
      <li><a href="ViewCategories.jsp">Categories</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="ContactUs.jsp"><span class="glyphicon glyphicon-user"></span> ContactUs</a></li>
    <c:if test="${sessionScope.role == null}">
      <li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      <c:if test="${sessionScope.role == 'ROLE_ADMIN'|| sessionScope.role == 'ROLE_USER' }">
      	<li><a href="index.jsp" class="btn btn-link">Hi ${sessionScope.name}</a></li>
      	<li><a href="Logout" class="btn btn-link">Logout</a></li>
      </c:if>
      
     </ul>
  </div>
</nav>
  


</body>
</html>
