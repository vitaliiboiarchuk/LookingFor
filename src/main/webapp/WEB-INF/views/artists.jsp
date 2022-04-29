<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="header.jsp"/>
<jsp:include page="sidebar.jsp"/>

<main id="main" class="main">


    <section class="section">
        <div class="row">
            <div class="col-lg-14">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Artyści</h5>

                        <!-- Default Table -->
                        <table class="table">
                            <tbody>
                            <c:forEach items="${artists}" var="artist">
                                <tr>
                                    <th scope="row">${artist.name}</th>
                                    <td>
                                        <a href="<c:url value="/event/artist/${artist.id}/"/>">Pokaż</a>
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