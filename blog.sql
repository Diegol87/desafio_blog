-- 1. ya fue creado la base de datos "blog"
-- 2. Crear las tablas indicadas de acuerdo al modelo de datos
CREATE TABLE usuario(
    id SERIAL, 
    email VARCHAR(50), 
    PRIMARY KEY(id)
);

 id | email
----+-------
(0 filas)

CREATE TABLE post(
    id SERIAL, 
    usuario_id INT, 
    titulo VARCHAR(25), 
    fecha DATE, 
    PRIMARY KEY(id), 
    FOREIGN KEY(usuario_id) REFERENCES usuario(id)
);

id | usuario_id | titulo | fecha
----+------------+--------+-------
(0 filas)

CREATE TABLE comentario(
	id SERIAL,
	post_id INT,
	usuario_id INT,
	texto VARCHAR(50),
	fecha DATE,
	PRIMARY KEY(id),
	FOREIGN KEY(post_id) REFERENCES post(id),
	FOREIGN KEY(usuario_id) REFERENCES usuario(id)
);

id | post_id | usuario_id | texto | fecha
----+---------+------------+-------+-------
(0 filas)

-- 3. Insertar registros para las tres tablas

--Tabla usuarios

INSERT INTO usuario(email) VALUES('usuario01@hotmail.com');
INSERT INTO usuario(email) VALUES('usuario02@hotmail.com');
INSERT INTO usuario(email) VALUES('usuario03@hotmail.com');
INSERT INTO usuario(email) VALUES('usuario04@hotmail.com');
INSERT INTO usuario(email) VALUES('usuario05@hotmail.com');
INSERT INTO usuario(email) VALUES('usuario06@hotmail.com');
INSERT INTO usuario(email) VALUES('usuario07@hotmail.com');
INSERT INTO usuario(email) VALUES('usuario08@hotmail.com');
INSERT INTO usuario(email) VALUES('usuario09@hotmail.com');

 id |         email
----+-----------------------
  1 | usuario01@hotmail.com
  2 | usuario02@hotmail.com
  3 | usuario03@hotmail.com
  4 | usuario04@hotmail.com
  5 | usuario05@hotmail.com
  6 | usuario06@hotmail.com
  7 | usuario07@hotmail.com
  8 | usuario08@hotmail.com
  9 | usuario09@hotmail.com
(9 filas)

--Tabla post

INSERT INTO post(usuario_id, titulo, fecha) VALUES(1, 'Post 1: Esto es malo', '29-06-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(5, 'Post 2: Esto es malo', '20-06-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(1, 'Post 3: Esto es excelente', '30-05-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(9, 'Post 4: Esto es bueno', '09-05-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(7, 'Post 5: Esto es bueno', '10-07-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(5, 'Post 6: Esto es excelente', '18-07-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(8, 'Post 7: Esto es excelente', '07-07-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(5, 'Post 8: Esto es excelente', '14-05-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(2, 'Post 9: Esto es bueno', '08-05-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(6, 'Post 10: Esto es bueno', '02-06-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(4, 'Post 11: Esto es bueno', '05-05-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(9, 'Post 12: Esto es malo', '23-07-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(5, 'Post 13: Esto es bueno', '30-05-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(8, 'Post 14: Esto es bueno', '01-05-2020');
INSERT INTO post(usuario_id, titulo, fecha) VALUES(7, 'Post 15: Esto es malo', '17-06-2020');

id | usuario_id |          titulo           |   fecha
----+------------+---------------------------+------------
  1 |          1 | Post 1: Esto es malo      | 2020-06-29
  2 |          5 | Post 2: Esto es malo      | 2020-06-20
  3 |          1 | Post 3: Esto es excelente | 2020-05-30
  4 |          9 | Post 4: Esto es bueno     | 2020-05-09
  5 |          7 | Post 5: Esto es bueno     | 2020-07-10
  6 |          5 | Post 6: Esto es excelente | 2020-07-18
  7 |          8 | Post 7: Esto es excelente | 2020-07-07
  8 |          5 | Post 8: Esto es excelente | 2020-05-14
  9 |          2 | Post 9: Esto es bueno     | 2020-05-08
 10 |          6 | Post 10: Esto es bueno    | 2020-06-02
 11 |          4 | Post 11: Esto es bueno    | 2020-05-05
 12 |          9 | Post 12: Esto es malo     | 2020-07-23
 13 |          5 | Post 13: Esto es bueno    | 2020-05-30
 14 |          8 | Post 14: Esto es bueno    | 2020-05-01
 15 |          7 | Post 15: Esto es malo     | 2020-06-17
(15 filas)

--Tabla comentario

INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(3, 6, 'Este es el comentario 1', '08-07-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(4, 2, 'Este es el comentario 2', '07-06-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(6, 4, 'Este es el comentario 3', '16-06-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(2, 13, 'Este es el comentario 4', '15-06-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(6, 6, 'Este es el comentario 5', '14-05-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(3, 3, 'Este es el comentario 6', '08-07-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(6, 1, 'Este es el comentario 7', '22-05-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(6, 7, 'Este es el comentario 8', '09-07-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(8, 13, 'Este es el comentario 9', '30-06-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(8, 6, 'Este es el comentario 10', '19-06-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(5, 1, 'Este es el comentario 11', '09-05-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(8, 15, 'Este es el comentario 12', '17-06-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(1, 9, 'Este es el comentario 13', '01-05-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(2, 5, 'Este es el comentario 14', '31-05-2020');
INSERT INTO comentario(usuario_id, post_id, texto, fecha) VALUES(4, 3, 'Este es el comentario 15', '28-06-2020');

 id | post_id | usuario_id |          texto           |   fecha
----+---------+------------+--------------------------+------------
  1 |       6 |          3 | Este es el comentario 1  | 2020-07-08
  2 |       2 |          4 | Este es el comentario 2  | 2020-06-07
  3 |       4 |          6 | Este es el comentario 3  | 2020-06-16
  4 |      13 |          2 | Este es el comentario 4  | 2020-06-15
  5 |       6 |          6 | Este es el comentario 5  | 2020-05-14
  6 |       3 |          3 | Este es el comentario 6  | 2020-07-08
  7 |       1 |          6 | Este es el comentario 7  | 2020-05-22
  8 |       7 |          6 | Este es el comentario 8  | 2020-07-09
  9 |      13 |          8 | Este es el comentario 9  | 2020-06-30
 10 |       6 |          8 | Este es el comentario 10 | 2020-06-19
 11 |       1 |          5 | Este es el comentario 11 | 2020-05-09
 12 |      15 |          8 | Este es el comentario 12 | 2020-06-17
 13 |       9 |          1 | Este es el comentario 13 | 2020-05-01
 14 |       5 |          2 | Este es el comentario 14 | 2020-05-31
 15 |       3 |          4 | Este es el comentario 15 | 2020-06-28
(15 filas)

-- 4. Seleccionar el correo, id y titulo de todos los post publicados por el usuario 5

SELECT usuario.id, usuario.email, post.titulo FROM usuario FULL OUTER JOIN post ON post.usuario_id = usuario.id WHERE post.usuario_id = 5;

 id |         email         |          titulo
----+-----------------------+---------------------------
  5 | usuario05@hotmail.com | Post 2: Esto es malo
  5 | usuario05@hotmail.com | Post 6: Esto es excelente
  5 | usuario05@hotmail.com | Post 8: Esto es excelente
  5 | usuario05@hotmail.com | Post 13: Esto es bueno
(4 filas)


-- 5. Listar el correo, id y el detalle de todos los comentarios que no hayan sido realizados por el usuario con email "usuario06@hotmail.com"

SELECT usuario.email, comentario.id, comentario.texto FROM comentario FULL OUTER JOIN usuario ON usuario.id = comentario.usuario_id WHERE usuario.email = 'usuario06@hotmail.com';

         email         | id |          texto
-----------------------+----+-------------------------
 usuario06@hotmail.com |  3 | Este es el comentario 3
 usuario06@hotmail.com |  5 | Este es el comentario 5
 usuario06@hotmail.com |  7 | Este es el comentario 7
 usuario06@hotmail.com |  8 | Este es el comentario 8
(4 filas)

-- 6. Listar los usuarios que no han publicado ningún post

SELECT usuario.email FROM usuario FULL OUTER JOIN post ON usuario.id = post.usuario_id WHERE usuario.id IS NULL or post.usuario_id IS NULL;

         email
-----------------------
 usuario03@hotmail.com
(1 fila)


-- 7. Listar todos los post con sus comentarios (incluyendo aquellos que no poseen comentarios)

SELECT post.titulo, comentario.texto FROM comentario FULL OUTER JOIN post ON comentario.post_id = post.id ORDER BY post ASC;

          titulo           |          texto
---------------------------+--------------------------
 Post 1: Esto es malo      | Este es el comentario 11
 Post 1: Esto es malo      | Este es el comentario 7
 Post 2: Esto es malo      | Este es el comentario 2
 Post 3: Esto es excelente | Este es el comentario 15
 Post 3: Esto es excelente | Este es el comentario 6
 Post 4: Esto es bueno     | Este es el comentario 3
 Post 5: Esto es bueno     | Este es el comentario 14
 Post 6: Esto es excelente | Este es el comentario 1
 Post 6: Esto es excelente | Este es el comentario 5
 Post 6: Esto es excelente | Este es el comentario 10
 Post 7: Esto es excelente | Este es el comentario 8
 Post 8: Esto es excelente |
 Post 9: Esto es bueno     | Este es el comentario 13
 Post 10: Esto es bueno    |
 Post 11: Esto es bueno    |
 Post 12: Esto es malo     |
 Post 13: Esto es bueno    | Este es el comentario 9
 Post 13: Esto es bueno    | Este es el comentario 4
 Post 14: Esto es bueno    |
 Post 15: Esto es malo     | Este es el comentario 12
(20 filas)

-- 8. Listar todos los usuarios que hayan publicado un post en Junio

SELECT usuario.email, post.fecha FROM usuario JOIN post ON usuario.id = post.usuario_id WHERE post.fecha < '01-07-2020' and post.fecha > '31-05-2020';

         email         |   fecha
-----------------------+------------
 usuario01@hotmail.com | 2020-06-29
 usuario05@hotmail.com | 2020-06-20
 usuario06@hotmail.com | 2020-06-02
 usuario07@hotmail.com | 2020-06-17
(4 filas)






