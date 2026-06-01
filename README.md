# paez-post1-u5

## Laboratorio Unidad 5 – Gestión de Tareas con Servlets y JSP

### Descripción
Aplicación web mínima en Java con Servlets y JSP que permite:
- Listar tareas existentes (GET)
- Agregar nuevas tareas (POST con formulario)
- Eliminar tareas por ID (POST)
- Validación de formulario en el servidor
- Patrón Post/Redirect/Get para evitar reenvío de formularios

### Estructura del proyecto
paez-post1-u5/
├─ src/main/java/com/paez/model/Tarea.java
├─ src/main/java/com/paez/servlet/TareasServlet.java
├─ src/main/webapp/WEB-INF/views/tareas.jsp
├─ src/main/webapp/index.jsp
├─ src/main/webapp/WEB-INF/web.xml
├─ pom.xml
└─ .gitignore

### Tecnologías usadas
- Java 17
- Maven 3.8+
- Jakarta EE 10 (Servlets 6.0, JSP 3.0)
- Apache Tomcat 10.1
- JSTL 3.0
### Instrucciones para ejecutar
1. Clonar el repositorio:
```bash
git clone <url-del-repositorio>
cd paez-post1-u5
```

2. Compilar el proyecto:
```bash
mvn clean compile
```

3. Empaquetar la aplicación:
```bash
mvn package
```

4. Desplegar en Tomcat:
   - Copiar el archivo WAR generado (`target/paez-post1-u5.war`) a la carpeta `webapps` de Tomcat
   - Iniciar Tomcat

5. Acceder a la aplicación:
```
http://localhost:8080/paez-post1-u5
```

### Endpoints disponibles

- **GET** `/paez-post1-u5/tareas` - Listar todas las tareas
- **POST** `/paez-post1-u5/tareas` - Crear una nueva tarea
- **POST** `/paez-post1-u5/tareas?action=delete&id={id}` - Eliminar una tarea

### Requisitos previos

- JDK 17 o superior
- Maven 3.8.1 o superior
- Apache Tomcat 10.1 o superior

### Nota
Este proyecto utiliza el patrón Post/Redirect/Get (PRG) para evitar el reenvío accidental de formularios.
