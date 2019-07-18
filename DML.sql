
insert into SALA values
(1,'sala1',40,'edificio1'),
(2,'sala2',30,'edificio1'),
(3,'sala3',20,'edificio1'),
(4,'sala1',40,'edificio2'),
(5,'sala2',40,'edificio2'),
(6,'sala3',35,'edificio2'),
(7,'laboratorio',35,'edificio2')

insert into DOCENTE values
(1,'Gabriel Caceres','Ingeniero en informatica','12345678','gabriel@gmail.com','+56948618046'),
(2,'Gabriel Olivares','Ingeniero en Electricidad','13456789','gabrielO@gmail.com','+56967876533'),
(3,'Francisco Nuñez','Matematico','14258369','francisco@gmail.com','45623411'),
(4,'Sebastian Gallardo','Fisico','15147258','sebastian@mail.com','56743212'),
(5,'Fabrizzio Lopez','Prevencionista','96542221','fabrizzio@mail.com','22212343'),
(6,'Franco Salinas','Pedagogia','45676661','franco@mail.com','56945512322')

insert into ESTUDIANTE values
(1,'Jose meneses', getdate(), 2015, '164431231', 'calle n1','+56948618046', 'gabriel@gmail.com'),
(2,'Pablo marmol', getdate(), 2015, '109876787', 'calle 2','gabrielO@gmail.com','+56967876533'),
(3,'Francisco mochila', getdate(), 2016, '123454321', 'calle3','francisco@gmail.com','45623411'),
(4,'Giuseppe Varas',getdate(), 2016, '93453453', 'calle 4','sebastian@mail.com','56743212'),
(5,'Rafael princeso', getdate(), 2018, '54321111', 'calle 5','fabrizzio@mail.com','22212343'),
(6,'Jhon perez', getdate(), 2017, '156666664', 'calle sin numero','franco@mail.com','56945512322')

INSERT INTO MODULO VALUES
('MOD1','BASE DE DATOS',60,'NO'),
('MOD2','ARQUITECTURA',50,'NO'),
('MOD3','JEFATURA',60,'SI'),
('MOD4','GESTION DE PROYECTOS',60,'NO'),
('MOD5','PROGRAMACION',65,'NO'),
('MOD6','PROGRAMACION WEB',50,'NO'),
('MOD7','ANALISIS',700,'SI')


INSERT INTO IMPARTE VALUES
(1, 'MOD1', 'LUNES', '17:00'),
(2, 'MOD2', 'MARTES', '14:00'),
(3, 'MOD3', 'MIERCOLES', '18:00'),
(4, 'MOD4', 'JUEVES', '10:00'),
(5, 'MOD5', 'VIERNES', '13:00'),
(6, 'MOD6', 'SABADO', '14:00'),
(6, 'MOD7', 'SABADO', '16:00')

INSERT INTO DICTA VALUES 
('DIURNO', 1, 'MOD1'),
('VESPERTINO', 1, 'MOD2'),
('DIURNO', 2, 'MOD3'),
('DIURNO', 3, 'MOD4'),
('DIURNO', 4, 'MOD5'),
('DIURNO', 5, 'MOD6'),
('VESPERTINO', 6, 'MOD7')

INSERT INTO CURSA VALUES 
(1, 'MOD1', 40, 2.5, 2, 'reprobado', 'segundo'),
(2, 'MOD1', 80, 5.5, 1, 'cursando', 'primero'),
(3, 'MOD1', 30, 4.0, 1, 'aprobado', 'segundo'),
(4, 'MOD1', 40, 6.0, 1, 'cursando', 'primero'),
(5, 'MOD1', 38, 5.6, 1, 'cursando', 'primero'),
(6, 'MOD1', 44, 5.0, 1, 'cursando', 'primero'),
(1, 'MOD2', 80, 5.0, 1, 'cursando', 'primero'),
(2, 'MOD2', 78, 6.2, 1, 'cursando', 'primero'),
(3, 'MOD2', 80, 6.0, 1, 'cursando', 'primero'),
(4, 'MOD2', 60, 6.0, 1, 'cursando', 'primero'),
(5, 'MOD2', 65, 3.4, 1, 'cursando', 'primero'),
(6, 'MOD2', 80, 4.0, 1, 'cursando', 'primero'),
(1, 'MOD3', 90, 5.0, 1, 'aprobado', 'primero'),
(2, 'MOD3', 95, 6.2, 1, 'aprobado', 'primero'),
(3, 'MOD3', 100, 6.0, 1, 'aprobado', 'primero'),
(4, 'MOD3', 89, 6.0, 1, 'aprobado', 'primero'),
(5, 'MOD3', 90, 6.8, 1, 'aprobado', 'primero'),
(6, 'MOD3', 100, 4.0, 1, 'aprobado', 'primero')




