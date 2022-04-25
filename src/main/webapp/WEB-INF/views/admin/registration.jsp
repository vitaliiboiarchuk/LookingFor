<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

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
                                    <h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
                                    <p class="text-center small">Enter your personal details to create account</p>
                                </div>

                                <form:form method="post" modelAttribute="user" class="row g-3 needs-validation">

                                    <div class="col-12">
                                        <label for="username" class="form-label">Username</label>
                                        <div class="input-group has-validation">
                                            <form:input path="username" type="text" name="username" class="form-control"
                                                        id="username"/>
                                            <div class="invalid-feedback">Please choose a username.</div>
                                        </div>
                                    </div>
                                        <form:errors path="username" class="alert alert-danger"/>


                                    <div class="col-12">
                                        <label for="password" class="form-label">Password</label>
                                        <form:input path="password" type="text" name="password" class="form-control"
                                                    id="password"/>
                                        <div class="invalid-feedback">Please enter your password!</div>
                                    </div>
                                        <form:errors path="password" class="alert alert-danger"/>

                                    <div class="col-12">
                                        <label for="password" class="form-label">Full Name</label>
                                        <form:input path="name" type="text" name="name" class="form-control"
                                                    id="name"/>
                                        <div class="invalid-feedback">Please enter your full name!</div>
                                    </div>
                                    <form:errors path="name" class="alert alert-danger"/>

                                    <div class="col-12">
                                        <label for="password" class="form-label">Company</label>
                                        <form:input path="company" type="text" name="company" class="form-control"
                                                    id="company"/>
                                        <div class="invalid-feedback">Please enter your Company!</div>
                                    </div>
                                    <form:errors path="company" class="alert alert-danger"/>

                                    <div class="col-12">
                                        <label for="password" class="form-label">Job</label>
                                        <form:select path="job" items="${jobs}" name="job" class="form-select"
                                                     itemValue="id" itemLabel="title"
                                                     id="floatingSelect" aria-label="State"/>
                                        <div class="invalid-feedback">Please choose your specialization!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="password" class="form-label">Country</label>
                                        <form:input path="country" type="text" name="country" class="form-control"
                                                    id="country"/>
                                        <div class="invalid-feedback">Please enter your country!</div>
                                    </div>
                                    <form:errors path="country" class="alert alert-danger"/>

                                    <div class="col-12">
                                        <label for="password" class="form-label">Address</label>
                                        <form:input path="address" type="text" name="address" class="form-control"
                                                    id="address"/>
                                        <div class="invalid-feedback">Please enter your address!</div>
                                    </div>
                                    <form:errors path="address" class="alert alert-danger"/>

                                    <div class="col-12">
                                        <label for="password" class="form-label">Phone</label>
                                        <form:input path="phone" type="text" name="phone" class="form-control"
                                                    id="phone"/>
                                        <div class="invalid-feedback">Please enter your phone!</div>
                                    </div>
                                    <form:errors path="phone" class="alert alert-danger"/>

                                    <div class="col-12">
                                        <label for="password" class="form-label">Email</label>
                                        <form:input path="email" type="text" name="email" class="form-control"
                                                    id="email"/>
                                        <div class="invalid-feedback">Please enter your email!</div>
                                    </div>
                                    <form:errors path="email" class="alert alert-danger"/>


                                    <div class="col-12">
                                        <div class="form-check">
                                            <input class="form-check-input" name="terms" type="checkbox" value=""
                                                   id="acceptTerms" required>
                                            <label class="form-check-label" for="acceptTerms">I agree and accept the <a
                                                    href="#">terms and conditions</a></label>
                                            <div class="invalid-feedback">You must agree before submitting.</div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="submit">Create Account</button>
                                    </div>
                                    <div class="col-12">
                                        <p class="small mb-0">Already have an account? <a href="/login">Login</a></p>
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

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

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
