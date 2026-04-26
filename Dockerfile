# Usamos una imagen base de Java (Asegúrate de que coincide con la versión de tu pom.xml, normalmente 17 o 21)
FROM eclipse-temurin:23-jre-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo JAR compilado desde la carpeta target al contenedor
COPY target/*.jar app.jar

# Exponemos el puerto interno por el que escucha Spring Boot
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]