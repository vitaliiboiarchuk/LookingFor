<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="header.jsp"/>
<jsp:include page="sidebar.jsp"/>

<main id="main" class="main">

    <div class="pagetitle">
        <h1>Wypełnij formularz!</h1>
    </div><!-- End Page Title -->
    <section class="section">
        <div class="row">

            <div class="col-lg-6">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Edycja</h5>

                        <!-- Floating Labels Form -->

                        <form:form method="post" modelAttribute="event" action="/event/update" class="row g-3">


                        <div class="col-md-12">
                            <div class="form-floating">
                                <form:input path="title" type="text" class="form-control" id="title"
                                            placeholder="Your Name"/>
                                <label for="title">Tytuł</label>
                            </div>
                        </div>
                        <form:errors path="title" class="alert alert-danger"/>

                        <div class="col-md-12">
                            <div class="form-floating">
                                <form:select path="category" items="${categories}" class="form-select"
                                             itemValue="id" itemLabel="title"
                                             id="floatingSelect" aria-label="State"/>
                                <label for="floatingSelect">Kategoria</label>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-floating">
                                <form:input path="price" type="text" class="form-control" id="title"
                                            placeholder="Your Name"/>
                                <label for="title">Strona internetowa</label>
                            </div>
                        </div>
                        <form:errors path="price" class="alert alert-danger"/>

                        <div class="col-12">
                            <div class="form-floating">
                                <form:textarea path="content" class="form-control" placeholder="Address"
                                               id="floatingTextarea" style="height: 100px;"/>
                                <label for="floatingTextarea">Opis</label>
                            </div>
                        </div>
                        <form:errors path="content" class="alert alert-danger"/>

                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="form-floating">
                                    <form:select path="city" items="${cities}" itemValue="id" itemLabel="name" class="form-control" id="floatingCity"
                                                placeholder="City"/>
                                    <label for="floatingCity">Miasto</label>
                                </div>
                            </div>
                        </div>
                        <form:errors path="city" class="alert alert-danger"/>

                        <div class="col-md-6">
                            <div class="col-md-12">
                                <div class="form-floating">
                                    <form:input path="address" type="text" class="form-control" id="floatingCity2"
                                                placeholder="City"/>
                                    <label for="floatingCity">Adres</label>
                                </div>
                            </div>
                        </div>
                        <form:errors path="address" class="alert alert-danger"/>


                        <div class="col-md-14">
                            <label for="inputDate" class="col-sm-2 col-form-label">Data</label>
                            <div class="col-sm-10">
                                <form:input path="date" type="date" name="inputDate" class="form-control"/>
                            </div>
                        </div>
                        <form:errors path="date" class="alert alert-danger"/>

                        <div class="col-md-14">
                            <label for="inputTime" class="col-sm-2 col-form-label">Czas</label>
                            <div class="col-sm-10">
                                <form:input path="time" type="time" name="inputTime" class="form-control"/>
                            </div>
                        </div>
                        <form:errors path="time" class="alert alert-danger"/>

                        <form:hidden path="id"/>
                        <form:hidden path="created"/>
                        <form:hidden path="user"/>

<%--                        <div class="col-md-12">--%>
<%--                            <label for="inputNumber" class="col-sm-2 col-form-label">Zdjęcie</label>--%>
<%--                            <div class="col-sm-10">--%>
<%--                                <input class="form-control" type="file" id="formFile">--%>
<%--                            </div>--%>
<%--                        </div>--%>

                        <!-- End floating Labels Form -->

                    </div>
                </div>

            </div>

            <div class="col-lg-6">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Dodanie artystów</h5>

                        <!-- Advanced Form Elements -->

                        <div class="col-md-12">
                            <div class="form-floating">
                                <form:checkboxes path="artists" items="${users}" itemLabel="name" itemValue="id" delimiter="<br/>" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>


            <div class="text-center">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form:form>


        </div>
    </section>

</main>
<!-- End #main -->

<jsp:include page="footer.jsp"/>