# Usa una imagen base de Java
FROM openjdk:17-jdk-slim

# Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR generado por tu aplicación Spring Boot al contenedor
COPY target/*.jar app.jar

# Expone el puerto en el que la aplicación escuchará
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]


