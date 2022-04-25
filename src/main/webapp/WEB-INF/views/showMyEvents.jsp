<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="header.jsp"/>
<jsp:include page="sidebar.jsp"/>

<main id="main" class="main">


    <section class="section">
        <div class="row">
            <div class="col-lg-6">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">${event.title}</h5>
                        <p>Kategoria: ${event.category}</p>
                        <p>Cena: ${event.price}</p>
                        <p>Opis: ${event.content}</p>
                        <p>Miasto: ${event.city}</p>
                        <p>Adres: ${event.address}</p>
                        <p>Data: ${event.date}</p>
                        <p>Czas: ${event.time}</p>
                    </div>
                </div>

                <c:if test="${show}">

                <a href="<c:url value="/event/edit/${id}/"/>"><div class="d-grid gap-2 mt-3">
                    <button class="btn btn-primary" type="button">Edytuj</button>
                </div></a>
                <a href="<c:url value="/event/delete/${id}/"/>"><div class="d-grid gap-2 mt-3">
                    <button class="btn btn-primary" type="button">Usuń</button>
                </div></a>

                </c:if>

            </div>


            <div class="col-lg-6">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Artyści</h5>
                        <c:forEach items="${event.artists}" var="artist">
                            <p><a href="/event/artist/${artist.id}">${artist.name}</a></p>
                        </c:forEach>
                    </div>
                </div>
            </div>


        </div>
    </section>

</main><!-- End #main -->

<jsp:include page="footer.jsp"/>