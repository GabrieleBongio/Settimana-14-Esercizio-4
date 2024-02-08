-- Esercizio 1.a
SELECT * FROM Impiegati WHERE Età > 29
-- Esercizio 1.b
SELECT * FROM Impiegati WHERE Reddito_Mensile > 8000
-- Esercizio 1.c
SELECT * FROM Impiegati WHERE Detrazione_Fiscale = 1
-- Esercizio 1.d
SELECT * FROM Impiegati WHERE Detrazione_Fiscale = 0
-- Esercizio 1.e
SELECT * FROM Impiegati WHERE Cognome LIKE 'G%' ORDER BY Cognome
-- Esercizio 1.f
SELECT COUNT(*) FROM Impiegati
-- Esercizio 1.g
SELECT SUM(Reddito_Mensile) FROM Impiegati
-- Esercizio 1.h
SELECT AVG(Reddito_Mensile) FROM Impiegati
-- Esercizio 1.i
SELECT MAX(Reddito_Mensile) FROM Impiegati
-- Esercizio 1.j
SELECT MIN(Reddito_Mensile) FROM Impiegati
-- Esercizio 1.k
SELECT * FROM Impiegati INNER JOIN Impieghi 
ON Impiegati.IDImpiego = Impieghi.IDImpiego
--WHERE Data_Assunzione > '01/01/2007' AND Data_Assunzione < '01/01/2008'
WHERE Data_Assunzione BETWEEN '01/01/2007' AND '01/01/2008'
-- Esercizio 1.l
DECLARE @Tipo_Impiego NVARCHAR(100) = 'Dirigente'
SELECT * FROM Impiegati INNER JOIN Impieghi 
ON Impiegati.IDImpiego = Impieghi.IDImpiego
WHERE Tipo_Impiego = @Tipo_Impiego
-- Esercizio 1.m
SELECT AVG(Età) FROM Impiegati