

CREATE PROCEDURE firstProcedure @nro_matricula INT, @semestre VARCHAR (20)
AS
SELECT est.NOMBRE,
       cur.SEMESTRE, mod.NOMBRE AS
       NOMBRE_MODULO,
       imp.HORA,
       sal.NOMBRE AS NOMBRE_SALA,
       doc.NOMBRE AS NOMBRE_DOCENTE
FROM ESTUDIANTE AS est 
LEFT JOIN CURSA cur ON est.NRO_MATRICULA = cur.NRO_MATRICULA_CURSA
LEFT JOIN MODULO mod ON cur.COD_MOD_CURSA = mod.COD_MOD
LEFT JOIN IMPARTE imp ON mod.COD_MOD = imp.COD_MODULO_IMPARTE
LEFT JOIN SALA sal ON imp.COD_SALA_IMPARTE = sal.COD_SALA
LEFT JOIN DICTA dic ON dic.COD_MODULO_DICTA = mod.COD_MOD
LEFT JOIN DOCENTE doc ON dic.USER_DOC_DICTA = doc.USER_DOC
WHERE est.NRO_MATRICULA = @nro_matricula AND cur.SEMESTRE = @semestre
GO
EXEC firstProcedure @nro_matricula = 1, @semestre = 'primero';


/*
second exercise
*/
CREATE FUNCTION COUNTMODULOS 
(@nro_matricula INT)
RETURNS INT
AS
BEGIN
    DECLARE @quantity INT    
    SELECT @quantity = COUNT(mod.COD_MOD) 
    FROM MODULO mod
    LEFT JOIN CURSA cur ON mod.COD_MOD = cur.COD_MOD_CURSA
    LEFT JOIN ESTUDIANTE est ON cur.NRO_MATRICULA_CURSA = est.NRO_MATRICULA
    WHERE cur.ESTADO = 'aprobado' AND est.NRO_MATRICULA = 2
    RETURN @quantity
END
GO

SELECT dbo.COUNTMODULOS(2)
/*
end second exercise
*/


/*
THIRD EXERCISE
*/
CREATE FUNCTION AVERAGE_STUDENT_3
(@nro_matricula INT)
RETURNS DECIMAL (2,1)
AS
BEGIN
    DECLARE @average DECIMAL (2,1)   
    SELECT @average = AVG(cur.NOTA_FINAL) FROM ESTUDIANTE AS est
    LEFT JOIN CURSA cur ON est.NRO_MATRICULA = cur.NRO_MATRICULA_CURSA
    WHERE est.NRO_MATRICULA = @nro_matricula
    RETURN @average
END
GO

SELECT dbo.AVERAGE_STUDENT_3(3)

/*
END THIRD EXERCISE
*/

/*
FOURTH EXERCISE
*/
CREATE PROCEDURE DETAIL_STUDENT_02 @nro_matricula INT
AS
BEGIN
    DECLARE @cantMod INT
    DECLARE @avgNote DECIMAL (2,1)
    SET @cantMod = dbo.COUNTMODULOS(@nro_matricula)
    SET @avgNote = dbo.AVERAGE_STUDENT_3(@nro_matricula)
    SELECT est.NOMBRE, est.ANO_INGRESO,   @cantMod AS CANTIDAD_APROBADOS, @avgNote AS MODULO_APROBADO
    FROM ESTUDIANTE AS est
    WHERE est.NRO_MATRICULA = @nro_matricula
END

EXEC DETAIL_STUDENT_02 @nro_matricula = 5;
/*
END FOURTH EXERCISE
*/


/*
FIFTH EXERCISE
*/
CREATE FUNCTION avgModulo (@codModulo VARCHAR (20), @semestre VARCHAR (20))
RETURNS DECIMAL(2,1)
BEGIN
    DECLARE @average DECIMAL (2,1)  
        SELECT @average = AVG(cur.NOTA_FINAL)
        FROM CURSA AS cur
        LEFT JOIN MODULO mod ON cur.COD_MOD_CURSA = mod.COD_MOD
        WHERE cur.COD_MOD_CURSA = @codModulo AND cur.SEMESTRE = @semestre
        GROUP BY mod.NOMBRE
    RETURN @average
END
GO

SELECT dbo.avgModulo('MOD1', 'primero')

SELECT * FROM MODULO
/*
END FIFTH EXERCISE
*/


/*
SIXTH EXERCISE
*/

/*
END SIXTH EXERCISE
*/

/*
SEVENTH EXERCISE
*/
CREATE VIEW viewEncrypted_1
WITH ENCRYPTION
AS
SELECT est.NOMBRE, mod.NOMBRE AS NOMBRE_MODULO, cur.NOTA_FINAL, cur.ASISTENCIA, cur.ESTADO
FROM ESTUDIANTE est
LEFT JOIN CURSA cur ON est.NRO_MATRICULA = cur.NRO_MATRICULA_CURSA
LEFT JOIN MODULO mod ON cur.COD_MOD_CURSA = mod.COD_MOD
GO

SELECT * FROM viewEncrypted_1
/*
END SEVENTH EXERCISE
*/