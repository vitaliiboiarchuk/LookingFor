<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>
<jsp:include page="sidebar.jsp"/>

<main id="main" class="main">

    <div class="pagetitle">
        <h1>Wybierz kategorię wydarzenia!</h1>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-8">
                <div class="row">

                    <!-- Sales Card -->
                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card sales-card">



                            <div class="card-body">
                                <a href="event/concerts/today"><h5 class="card-title">Koncerty <span>| Dzisiaj</span></h5></a>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi-music-note"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>${concerts}</h6>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- End Sales Card -->

                    <!-- Revenue Card -->
                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card revenue-card">


                            <div class="card-body">
                                <a href="event/parties/today"><h5 class="card-title">Imprezy <span>| Dzisiaj</span></h5></a>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi-music-note"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>${parties}</h6>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- End Revenue Card -->

                    <!-- Customers Card -->
                    <div class="col-xxl-4 col-xl-12">

                        <div class="card info-card customers-card">


                            <div class="card-body">
                                <a href="event/festivals/today"><h5 class="card-title">Festiwale <span>| Dzisiaj</span></h5></a>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi-music-note"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>${festivals}</h6>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div><!-- End Customers Card -->

                    <!-- Sales Card -->
                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card sales-card">


                            <div class="card-body">
                                <a href="event/theatre/today"><h5 class="card-title">Teatr <span>| Dzisiaj</span></h5></a>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi-palette-fill"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>${theatre}</h6>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- End Sales Card -->

                    <!-- Revenue Card -->
                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card revenue-card">


                            <div class="card-body">
                                <a href="event/exhibitions/today"><h5 class="card-title">Wystawy <span>| Dzisiaj</span></h5></a>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi-palette-fill"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>${exhibitions}</h6>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- End Revenue Card -->

                    <!-- Customers Card -->
                    <div class="col-xxl-4 col-xl-12">

                        <div class="card info-card customers-card">


                            <div class="card-body">
                                <a href="event/movies/today"><h5 class="card-title">Filmy <span>| Dzisiaj</span></h5></a>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi-palette-fill"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>${movies}</h6>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div><!-- End Customers Card -->


                </div>
            </div><!-- End Left side columns -->


        </div>
    </section>

</main>
<!-- End #main -->

<jsp:include page="footer.jsp"/>

