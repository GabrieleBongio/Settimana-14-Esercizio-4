CREATE PROCEDURE CreateImpiegato (
@Cognome NVARCHAR(50),
@Nome NVARCHAR(50),
@Codice_Fiscale NCHAR(16),
@Età INT,
@Reddito_Mensile MONEY,
@Detrazione_Fiscale BIT,
@IDImpiego INT
)
AS
BEGIN
	INSERT INTO Impiegati (Cognome, Nome, Codice_Fiscale, Età, Reddito_Mensile, Detrazione_Fiscale, IDImpiego)
	VALUES (@Cognome, @Nome, @Codice_Fiscale, @Età, @Reddito_Mensile, @Detrazione_Fiscale, @IDImpiego)
END
GO

CREATE PROCEDURE UpdateImpiegato (
@IDImpiegato INT,
@CampoDaModificare NVARCHAR(50),
@NuovoValore NVARCHAR(50)
)
AS
BEGIN
	UPDATE Impiegati SET @CampoDaModificare = @NuovoValore WHERE IDImpiegato = @IDImpiegato 
END
GO

CREATE PROCEDURE DeleteImpiegato (
@IDImpiegato INT
)
AS
BEGIN
	DELETE FROM Impiegati WHERE IDImpiegato = @IDImpiegato 
END
GO