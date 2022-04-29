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

      <jsp:include page="artistImage.jsp"/>

      <div class="col-xl-8">

        <div class="card">
          <div class="card-body pt-3">
            <!-- Bordered Tabs -->
            <ul class="nav nav-tabs nav-tabs-bordered">

              <li class="nav-item">
                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">
                  Overview
                </button>
              </li>

            </ul>
            <div class="tab-content pt-2">

              <div class="tab-pane fade show active profile-overview" id="profile-overview">
                <h5 class="card-title">About</h5>
                <p class="small fst-italic">${artist.about}</p>

                <h5 class="card-title">Upcoming events</h5>
                <!-- Default Table -->
                <table class="table">
                  <thead>
                  <tr>
                    <th scope="col">Kategoria</th>
                    <th scope="col">Tytuł</th>
                    <th scope="col">Miasto</th>
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


            </div><!-- End Bordered Tabs -->

          </div>
        </div>

      </div>
    </div>
  </section>

</main>
<!-- End #main -->

<jsp:include page="footer.jsp"/>