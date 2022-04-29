<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link " href="/event/city">
                <i class="bi bi-grid"></i>
                <span>Wydarzenia</span>
            </a>
        </li><!-- End wszystkie Nav -->

        <li class="nav-item">
            <a class="nav-link " href="/event/artists">
                <i class="bi bi-grid"></i>
                <span>Artyści</span>
            </a>
        </li><!-- End wszystkie Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <i class="bi-music-note"></i><span>Rozrywka</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/event/concerts">
                        <i class="bi bi-circle"></i><span>Koncerty</span>
                    </a>
                </li>
                <li>
                    <a href="/event/parties">
                        <i class="bi bi-circle"></i><span>Imprezy</span>
                    </a>
                </li>
                <li>
                    <a href="/event/festivals">
                        <i class="bi bi-circle"></i><span>Festiwale</span>
                    </a>
                </li>

            </ul>
        </li><!-- End Rozrywka Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                <i class="bi-palette-fill"></i><span>Kultura</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/event/theatre">
                        <i class="bi bi-circle"></i><span>Teatr</span>
                    </a>
                </li>
                <li>
                    <a href="/event/exhibitions">
                        <i class="bi bi-circle"></i><span>Wystawy</span>
                    </a>
                </li>
                <li>
                    <a href="/event/movies">
                        <i class="bi bi-circle"></i><span>Filmy</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Kultura Nav -->

<sec:authorize access="isAnonymous()">

        <li class="nav-item">
            <a class="nav-link collapsed" href="/registration">
                <i class="bi bi-card-list"></i>
                <span>Rejestracja</span>
            </a>
        </li><!-- End Register Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="/login">
                <i class="bi bi-box-arrow-in-right"></i>
                <span>Logowanie</span>
            </a>
        </li><!-- End Login Page Nav -->

</sec:authorize>

    </ul>

</aside>
<!-- End Sidebar-->


