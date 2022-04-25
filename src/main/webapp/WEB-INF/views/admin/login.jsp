<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<fmt:setBundle basename="messages" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Going</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="<c:url value="/resources/assets/img/favicon.png"/>" rel="icon">
    <link href="<c:url value="/resources/assets/img/apple-touch-icon.png"/>" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="<c:url value="/resources/assets/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/assets/vendor/boxicons/css/boxicons.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/assets/vendor/quill/quill.snow.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/assets/vendor/quill/quill.bubble.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/assets/vendor/remixicon/remixicon.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/assets/vendor/simple-datatables/style.css"/>" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="<c:url value="/resources/assets/css/style.css"/>" rel="stylesheet">

    <!-- =======================================================
    * Template Name: NiceAdmin - v2.2.2
    * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
</head>

<body>

<main>
    <div class="container">

        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <div class="d-flex justify-content-center py-4">
                            <a href="index.html" class="logo d-flex align-items-center w-auto">
                                <img src="assets/img/logo.png" alt="">
                                <span class="d-none d-lg-block">Going</span>
                            </a>
                        </div><!-- End Logo -->

                        <div class="card mb-3">

                            <div class="card-body">

                                <div class="pt-4 pb-2">
                                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                                    <p class="text-center small">Enter your username & password to login</p>
                                </div>

                                <form:form method="post" name="f" class="row g-3 needs-validation" modelAttribute="user" >

                                    <div class="col-12">
                                        <label for="username" class="form-label">Username</label>
                                        <div class="input-group has-validation">
                                            <form:input path="username" type="text" name="username" class="form-control" id="username" />
                                        </div>
                                    </div>
                                    <form:errors path="username" class="alert alert-danger"/>

                                    <div class="col-12">
                                        <label for="password" class="form-label">Password</label>
                                        <form:input path="password" type="password" name="password" class="form-control" id="password" />
                                    </div>
                                    <form:errors path="password" class="alert alert-danger"/>

                                    <c:if test="${param.error != null}">
                                        <div id="error" class="alert alert-danger">
                                            <spring:message code="message.badCredentials">
                                            </spring:message>
                                        </div>
                                    </c:if>


                                    <div class="col-12">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                                            <label class="form-check-label" for="rememberMe">Remember me</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="submit">Login</button>
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    </div>
                                    <div class="col-12">
                                        <p class="small mb-0">Don't have account? <a href="/registration">Create an account</a></p>
                                    </div>
                                </form:form>

                            </div>
                        </div>

                        <div class="credits">
                            <!-- All the links in the footer should remain intact. -->
                            <!-- You can delete the links only if you purchased the pro version. -->
                            <!-- Licensing information: https://bootstrapmade.com/license/ -->
                            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                        </div>

                    </div>
                </div>
            </div>

        </section>

    </div>
</main><!-- End #main -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="<c:url value="/resources/assets/vendor/apexcharts/apexcharts.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/chart.js/chart.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/echarts/echarts.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/quill/quill.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/simple-datatables/simple-datatables.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/tinymce/tinymce.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/php-email-form/validate.js"/>"></script>
<script src="<c:url value="/resources/assets/js/choose.js"/>"></script>


<!-- Template Main JS File -->
<script src="<c:url value="/resources/assets/js/main.js"/>"></script>

</body>

</html>




