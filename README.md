# Proyecto de Unión de Tablas en PostgreSQL

Este proyecto contiene un **script SQL** que representa una base de datos educativa, la cual incluye el diseño de tablas, inserciones de datos y relaciones entre estudiantes, cursos e instructores.

## 🧠 ¿Qué estoy aprendiendo?

Este repositorio forma parte de mi proceso de aprendizaje en **bases de datos relacionales con PostgreSQL**, y específicamente trabajé en:

- 🔧 Creación de esquemas y tablas.
- 🗃 Inserción de datos con `COPY` y valores predefinidos.
- 🔑 Definición de claves primarias y foráneas.
- 🔗 Relaciones entre tablas para modelar escenarios del mundo real (joins).
- ⛓ Diseño de una tabla intermedia (`student_courses_instructor`) para modelar relaciones muchos a muchos.

## 🗂 Estructura de la base de datos

La base de datos está organizada dentro del esquema `school`, e incluye:

- `students`: Información de los estudiantes.
- `courses`: Información de los cursos.
- `instructors`: Información de los instructores.
- `student_courses_instructor`: Relación entre estudiantes, cursos e instructores.

## 🚀 ¿Cómo restaurar esta base de datos?

Puedes restaurar este archivo en PostgreSQL utilizando la línea de comandos o pgAdmin.