USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_UPDATE]    Script Date: 8/2/2022 4:33:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UTENTI_UPDATE]
(
	@CodiceUtente int,
	@TipologiaUtente char(1),
	@Abilitato bit
)
	
AS
BEGIN
	UPDATE UTENTI
	SET TipologiaUtente = @TipologiaUtente
	WHERE CodiceUtente = @CodiceUtente
END
GO
