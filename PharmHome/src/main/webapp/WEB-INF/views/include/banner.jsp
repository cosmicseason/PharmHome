<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--banner-->
  <section id="banner" class="banner">
    <div class="bg-color">
      <nav class="navbar navbar-default navbar-fixed-top navbar-expand-lg navbar-light bg-light">
        <div class="container">
          <div class="col-md-12">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
              <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/resources/img/logo.png" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
            </div>
            <div class="collapse navbar-collapse navbar-right" id="navbarNavDropdown">
              <ul class="nav navbar-nav">
                <li class="active"><a href="${pageContext.request.contextPath}/home.do">Home</a></li>
                <li class=""><a href="${pageContext.request.contextPath}/about/about.do">About</a></li>
                <!-- dropdown navbar error -->
                <li class="nav-item dropdown">
	                <a  class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/blog/blog.do" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">blog</a>
	                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
			          <a class="dropdown-item" href="${pageContext.request.contextPath}/blog/blogQA.do">Q&A</a>
			          <a class="dropdown-item" href="${pageContext.request.contextPath}/blog/blogStory.do">Story</a>
			        </div>
                </li>
                <li class=""><a href="${pageContext.request.contextPath}/contact/contact.do">Contact</a></li>
              </ul>
            </div>
          </div>
        </div>
      </nav>
      <div class="container">
        <div class="row">
          <div class="banner-info">
            <div class="banner-logo text-center">
              <img src="${pageContext.request.contextPath}/resources/img/logo.png" class="img-responsive">
            </div>
            <div class="banner-text text-center">
              <h1 class="white">Pharmacy at your desk!!</h1>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod <br>tempor incididunt ut labore et dolore magna aliqua.</p>
              <a href="${pageContext.request.contextPath}/users/loginform.do" class="btn btn-appoint">Login</a>
            </div>
            <div class="overlay-detail text-center">
              <a href="#service"><i class="fa fa-angle-down"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ banner-->