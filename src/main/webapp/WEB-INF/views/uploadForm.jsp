<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html xmlns:th="https://www.thymeleaf.org">

<body>

<%--  W tutorialu baeldung używają html zamiast jsp i nie do końca wiem jak to u nich działało,
więc zdecydowałem  żeby zamienić to na jsp i spróbować z jsp poradzić
     Po przesełaniu zdjęcia na stronę powinno odrazu wyświetlać mi listę tych zdjęć, ale nic nie dzieje się--%>

<div th:if="${message}">
    <h2 th:text="${message}"/>
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
            <a th:href="${file}" th:text="${file}" />
        </li>
    </ul>
</div>

</body>
</html>