USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_UPDATE_ABILITATO]    Script Date: 8/2/2022 4:33:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UTENTI_UPDATE_ABILITATO]
(
	@Abilitato bit,
	@TipologiaUtente int,
	@CodiceUtente int
)
AS
BEGIN
	UPDATE UTENTI SET TipologiaUtente=@TipologiaUtente where CodiceUtente=@CodiceUtente
END
GO
