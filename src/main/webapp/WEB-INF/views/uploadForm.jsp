<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns:th="https://www.thymeleaf.org">
<body>

<div th:if="${message}">
    <h2 th:text="${message}"></h2>
</div>

<div>
    <form:form method="POST" enctype="multipart/form-data" >
        <table>
            <tr><td>File to upload:</td><td><input type="file" name="file" /></td></tr>
            <tr><td></td><td><input type="submit" value="Upload" /></td></tr>
        </table>
    </form:form>
</div>

<div>
    <ul>
        <li th:each="file : ${files}">
            <a th:href="${file}" th:text="${file}"></a>
        </li>
    </ul>
</div>

</body>
</html>