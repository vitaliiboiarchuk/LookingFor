<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="header.jsp"/>
<jsp:include page="sidebar.jsp"/>

<main id="main" class="main">

    <%--    <div class="pagetitle">--%>
    <%--        <h1>Najbliższe wydarzenia</h1>--%>
    <%--    </div><!-- End Page Title -->--%>

    <section class="section">
        <div class="row">
            <div class="col-lg-14">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Wydarzenia</h5>

                        <!-- Default Table -->
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Kategoria</th>
                                <th scope="col">Tytuł</th>
                                <th scope="col">Miasto</th>
                                <th scope="col">Adres</th>
                                <th scope="col">Data</th>
                                <th scope="col">Czas</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${events}" var="event">
                                <tr>
                                    <th scope="row">${event.category}</th>
                                    <td>${event.title}</td>
                                    <td>${event.city}</td>
                                    <td>${event.address}</td>
                                    <td>${event.date}</td>
                                    <td>${event.time}</td>
                                    <td>
                                        <a href="<c:url value="/event/show/${event.id}/"/>">Pokaż</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <!-- End Default Table Example -->
                    </div>
                </div>

            </div>
        </div>
    </section>

</main><!-- End #main -->

<jsp:include page="footer.jsp"/>