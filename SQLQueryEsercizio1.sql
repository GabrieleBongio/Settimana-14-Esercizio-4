CREATE PROCEDURE Esercizio_1_a
AS
BEGIN
	SELECT * FROM Impiegati WHERE Età > 29
END
GO


CREATE PROCEDURE Esercizio_1_b
AS
BEGIN
	SELECT * FROM Impiegati WHERE Reddito_Mensile > 8000
END
GO


CREATE PROCEDURE Esercizio_1_c
AS
BEGIN
	SELECT * FROM Impiegati WHERE Detrazione_Fiscale = 1
END
GO


CREATE PROCEDURE Esercizio_1_d
AS
BEGIN
	SELECT * FROM Impiegati WHERE Detrazione_Fiscale = 0
END
GO


CREATE PROCEDURE Esercizio_1_e
AS
BEGIN
	SELECT * FROM Impiegati WHERE Cognome LIKE 'G%' ORDER BY Cognome
END
GO


CREATE PROCEDURE Esercizio_1_f
AS
BEGIN
	SELECT COUNT(*) FROM Impiegati
END
GO


CREATE PROCEDURE Esercizio_1_g
AS
BEGIN
	SELECT SUM(Reddito_Mensile) FROM Impiegati
END
GO


CREATE PROCEDURE Esercizio_1_h
AS
BEGIN
	SELECT AVG(Reddito_Mensile) FROM Impiegati
END
GO


CREATE PROCEDURE Esercizio_1_i
AS
BEGIN
	SELECT MAX(Reddito_Mensile) FROM Impiegati
END
GO


CREATE PROCEDURE Esercizio_1_j
AS
BEGIN
	SELECT MIN(Reddito_Mensile) FROM Impiegati
END
GO


CREATE PROCEDURE Esercizio_1_k
AS
BEGIN
	SELECT * FROM Impiegati INNER JOIN Impieghi 
	ON Impiegati.IDImpiego = Impieghi.IDImpiego
	--WHERE Data_Assunzione > '01/01/2007' AND Data_Assunzione < '01/01/2008'
	WHERE Data_Assunzione BETWEEN '01/01/2007' AND '01/01/2008'
END
GO


CREATE PROCEDURE Esercizio_1_l(
	@Tipo_Impiego NVARCHAR(100)
	)
AS
BEGIN
	SELECT * FROM Impiegati INNER JOIN Impieghi 
	ON Impiegati.IDImpiego = Impieghi.IDImpiego
	--WHERE Data_Assunzione > '01/01/2007' AND Data_Assunzione < '01/01/2008'
	WHERE Tipo_Impiego = @Tipo_Impiego
END
GO


CREATE PROCEDURE Esercizio_1_m
AS
BEGIN
	SELECT AVG(Età) FROM Impiegati
END
GO