<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-xl-4">

  <div class="card">
    <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

      <%--      <img src="<c:url value="/resources/assets/img/profile-img.jpg"/>" alt="Profile" class="rounded-circle">--%>
      <h2>${manager.name}</h2>
      <h3>${manager.job}</h3>
      <div class="social-links mt-2">
        <a href="${manager.twitter}" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="${manager.facebook}" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="${manager.instagram}" class="instagram"><i class="bi bi-instagram"></i></a>
      </div>
    </div>
  </div>

</div>