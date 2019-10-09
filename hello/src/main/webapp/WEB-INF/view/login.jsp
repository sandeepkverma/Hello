<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en" class="app">

<head>
  <meta charset="utf-8" />
  <title>myproject - MapmyIndia Tracking Solution</title>
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrapv3.3.6.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/icon.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app.css" type="text/css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/stroke-gap.css" type="text/css" />

</head>
<body class="bg-dark">
  <section id="content" class="m-t-lg wrapper-md animated fadeInUp bg-dark">
    <div class="container aside-xl">
      <a class="navbar-brand block" href="#"><img src="${pageContext.request.contextPath}/images/logo.png" alt="" /></a>
      <section class="m-b-lg">
        <header class="wrapper text-center">
          <strong>Sign in to get in touch</strong>
        </header>
        
        <form action="${pageContext.request.contextPath}/login" method="post" name="myproject">
          <div class="list-group">
		 
                            <div id="showMessage" style="color: red;">
                            ${errormessage}
							</div>                          
            <div class="list-group-item">
              <input type="email" required placeholder="Email" class="form-control no-border" name="username">
            </div>
            <div class="list-group-item">
               <input type="password" required placeholder="Password" class="form-control no-border" name="password">
            </div>
          </div>
          <input type="submit" class="btn btn-lg btn-primary btn-block" id="signin" value="Sign in" >
          <div class="text-center m-t m-b"><a href="#"><small>Forgot password?</small></a></div>
          <div class="line line-dashed"></div>
          <p class="text-muted text-center"><small>Do not have an account?</small></p>
          <a href="#" class="btn btn-lg btn-default btn-block">Create an account</a>
        </form>
      </section>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder">
      <p>
        <small>&copy; 2016 CE Info Systems Pvt. Ltd.</small>
      </p>
    </div>
  </footer>
  <!-- / footer -->
  <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
  <!-- App -->
  <script src="${pageContext.request.contextPath}/js/app.js"></script>
  <script src="${pageContext.request.contextPath}/js/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/app.plugin.js"></script>
</body>
</html>
