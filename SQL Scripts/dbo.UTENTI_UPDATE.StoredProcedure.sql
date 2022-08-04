USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_UPDATE]    Script Date: 8/4/2022 8:55:27 AM ******/
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
