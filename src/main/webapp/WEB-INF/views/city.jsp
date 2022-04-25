<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                        <h5 class="card-title">Wybierz miasto</h5>

                        <!-- Floating Labels Form -->

                        <form method="get">

                            <div class="row mb-3">
                                <div class="col-sm-10">
                                    <select class="form-select" aria-label="Default select example" id="site" name="site">
                                        <option value="Warsaw" selected>Warszawa</option>
                                        <option value="Krakow">Kraków</option>
                                        <option value="Gdansk">Gdańsk</option>
                                        <option value="Wroclaw">Wrocław</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                            <div class="text-center">
                                <button type="submit" id="button" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-secondary">Reset</button>
                            </div>
                        <!-- End floating Labels Form -->

                    </div>
                </div>

            </div>

        </div>
    </section>

</main>
<!-- End #main -->

<jsp:include page="footer.jsp"/>