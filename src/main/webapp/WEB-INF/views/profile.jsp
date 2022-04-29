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
                                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
                            </li>

                            <li class="nav-item">
                                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
                            </li>

                        </ul>
                        <div class="tab-content pt-2">

                            <div class="tab-pane fade show active profile-overview" id="profile-overview">
                                <h5 class="card-title">About</h5>
                                <p class="small fst-italic">${user.about}</p>

                                <h5 class="card-title">Profile Details</h5>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label ">Full Name</div>
                                    <div class="col-lg-9 col-md-8">${user.name}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Company</div>
                                    <div class="col-lg-9 col-md-8">${user.company}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Job</div>
                                    <div class="col-lg-9 col-md-8">${user.job}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Country</div>
                                    <div class="col-lg-9 col-md-8">${user.country}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Address</div>
                                    <div class="col-lg-9 col-md-8">${user.address}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Phone</div>
                                    <div class="col-lg-9 col-md-8">${user.phone}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Email</div>
                                    <div class="col-lg-9 col-md-8">${user.email}</div>
                                </div>

                            </div>

                            <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                                <!-- Profile Edit Form -->
                                <form:form method="post" modelAttribute="user">
<%--                                    <div class="row mb-3">--%>
<%--                                        <label class="col-md-4 col-lg-3 col-form-label">Profile Image</label>--%>
<%--                                        <div class="col-md-8 col-lg-9">--%>
<%--                                            <img src="<c:url value="/resources/assets/img/profile-img.jpg"/>" alt="Profile">--%>
<%--                                            <div class="pt-2">--%>
<%--                                                <a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i class="bi bi-upload"></i></a>--%>
<%--                                                <a href="#" class="btn btn-danger btn-sm" title="Remove my profile image"><i class="bi bi-trash"></i></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>

                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Full Name</label>
                                        <div class="col-md-8 col-lg-9">
                                            <form:input path="name" name="fullName" type="text" class="form-control" id="fullName" value="${user.name}"/>
                                        </div>
                                    </div>
                                    <form:errors path="name" class="alert alert-danger"/>


                                    <div class="row mb-3">
                                        <label for="about" class="col-md-4 col-lg-3 col-form-label">About</label>
                                        <div class="col-md-8 col-lg-9">
                                            <form:textarea path="about" name="about" class="form-control" id="about" style="height: 100px" value="${user.about}"/>
                                        </div>
                                    </div>
                                    <form:errors path="about" class="alert alert-danger"/>


                                    <div class="row mb-3">
                                        <label for="company" class="col-md-4 col-lg-3 col-form-label">Company</label>
                                        <div class="col-md-8 col-lg-9">
                                            <form:input path="company" name="company" type="text" class="form-control" id="company" value="${user.company}"/>
                                        </div>
                                    </div>
                                    <form:errors path="company" class="alert alert-danger"/>


                                    <div class="row mb-3">
                                        <label for="Country" class="col-md-4 col-lg-3 col-form-label">Country</label>
                                        <div class="col-md-8 col-lg-9">
                                            <form:input path="country" name="country" type="text" class="form-control" id="Country" value="${user.country}"/>
                                        </div>
                                    </div>
                                    <form:errors path="country" class="alert alert-danger"/>


                                    <div class="row mb-3">
                                        <label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
                                        <div class="col-md-8 col-lg-9">
                                            <form:input path="address" name="address" type="text" class="form-control" id="Address" value="${user.address}"/>
                                        </div>
                                    </div>
                                    <form:errors path="address" class="alert alert-danger"/>


                                    <div class="row mb-3">
                                        <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                                        <div class="col-md-8 col-lg-9">
                                            <form:input path="phone" name="phone" type="text" class="form-control" id="Phone" value="${user.phone}"/>
                                        </div>
                                    </div>
                                    <form:errors path="phone" class="alert alert-danger"/>


                                    <div class="row mb-3">
                                        <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                                        <div class="col-md-8 col-lg-9">
                                            <form:input path="email" name="email" type="email" class="form-control" id="Email" value="${user.email}"/>
                                        </div>
                                    </div>
                                    <form:errors path="email" class="alert alert-danger"/>


                                    <div class="row mb-3">
                                        <label for="Twitter" class="col-md-4 col-lg-3 col-form-label">Twitter Profile</label>
                                        <div class="col-md-8 col-lg-9">
                                            <form:input path="twitter" name="twitter" type="text" class="form-control" id="Twitter" value="${user.twitter}"/>
                                        </div>
                                    </div>
                                    <form:errors path="twitter" class="alert alert-danger"/>

                                    <div class="row mb-3">
                                        <label for="Facebook" class="col-md-4 col-lg-3 col-form-label">Facebook Profile</label>
                                        <div class="col-md-8 col-lg-9">
                                            <form:input path="facebook" name="facebook" type="text" class="form-control" id="Facebook" value="${user.facebook}"/>
                                        </div>
                                    </div>
                                    <form:errors path="facebook" class="alert alert-danger"/>

                                    <div class="row mb-3">
                                        <label for="Instagram" class="col-md-4 col-lg-3 col-form-label">Instagram Profile</label>
                                        <div class="col-md-8 col-lg-9">
                                            <form:input path="instagram" name="instagram" type="text" class="form-control" id="Instagram" value="${user.instagram}"/>
                                        </div>
                                    </div>
                                    <form:errors path="instagram" class="alert alert-danger"/>

                                    <form:hidden path="username"/>
                                    <form:hidden path="job"/>
                                    <form:hidden path="id"/>
                                    <form:hidden path="password"/>
                                    <form:hidden path="enabled"/>
                                    <form:hidden path="roles"/>

                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Save Changes</button>
                                    </div>

                                </form:form><!-- End Profile Edit Form -->

                            </div>

                        </div><!-- End Bordered Tabs -->

                    </div>
                </div>

            </div>
        </div>
    </section>

</main><!-- End #main -->

<jsp:include page="footer.jsp"/>