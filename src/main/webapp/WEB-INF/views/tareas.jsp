<%--
  Created by IntelliJ IDEA.
  User: Camilo
  Date: 1/06/2026
  Time: 3:36 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Tareas</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 700px; margin: 2rem auto; }
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #ccc; padding: 8px 12px; }
        th { background: #C62828; color: white; }
        .error { color: #C62828; background: #FFEBEE; padding: 8px; }
        .completada { text-decoration: line-through; color: #808080; }
    </style>
</head>
<body>
<h1>Lista de Tareas</h1>

<!-- Mensaje de error -->
<c:if test="${not empty error}">
    <p class="error">${error}</p>
</c:if>

<!-- Formulario agregar tarea -->
<form method="post" action="${pageContext.request.contextPath}/tareas">
    <input type="hidden" name="accion" value="agregar">
    <input type="text" name="titulo" placeholder="Nueva tarea..." required>
    <button type="submit">Agregar</button>
</form>

<!-- Tabla de tareas -->
<table>
    <thead>
    <tr><th>#</th><th>Título</th><th>Estado</th><th>Acción</th></tr>
    </thead>
    <tbody>
    <c:forEach var="t" items="${tareas}">
        <tr>
            <td>${t.id}</td>
            <td class="${t.completada ? 'completada' : ''}">${t.titulo}</td>
            <td>${t.completada ? "Completada" : "Pendiente"}</td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/tareas">
                    <input type="hidden" name="accion" value="eliminar">
                    <input type="hidden" name="id" value="${t.id}">
                    <button type="submit">Eliminar</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>