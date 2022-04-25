<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="header.jsp"/>
<jsp:include page="sidebar.jsp"/>

<main id="main" class="main">

    <div class="pagetitle">
        <h1>Profile</h1>
    </div><!-- End Page Title -->

    <section class="section profile">
        <div class="row">

            <jsp:include page="userImage.jsp"/>

            <div class="col-xl-8">

                <div class="card">
                    <div class="card-body pt-3">
                        <!-- Bordered Tabs -->
                        <ul class="nav nav-tabs nav-tabs-bordered">

                            <li class="nav-item">
                                <a href="/newLogin"><button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-overview">
                                    Login
                                </button></a>
                            </li>

                            <li class="nav-item">
                                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-edit">
                                    Password
                                </button>
                            </li>

                        </ul>
                        <div class="tab-content pt-2">

                            <div class="tab-pane fade profile-edit pt-3" id="profile-overview">

                            </div>

                            <div class="tab-pane fade show active profile-edit pt-3" id="profile-edit">

                                <form:form method="post" modelAttribute="user">


                                    <form:hidden path="username"/>
                                    <form:hidden path="id"/>
                                    <form:hidden path="enabled"/>
                                    <form:hidden path="roles"/>
                                    <form:hidden path="name"/>
                                    <form:hidden path="country"/>
                                    <form:hidden path="company"/>
                                    <form:hidden path="job"/>
                                    <form:hidden path="address"/>
                                    <form:hidden path="phone"/>
                                    <form:hidden path="email"/>
                                    <form:hidden path="about"/>

                                <div class="row mb-3">
                                    <label class="col-md-4 col-lg-3 col-form-label">New
                                        Password</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="password" type="text" class="form-control"/>
                                    </div>
                                </div>
                                <form:errors path="password" class="alert alert-danger"/>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                                </form:form>

                            </div>

                        </div><!-- End Bordered Tabs -->

                    </div>
                </div>

            </div>
        </div>
    </section>

</main>
<!-- End #main -->

<jsp:include page="footer.jsp"/>