USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_SELECTONE]    Script Date: 8/2/2022 4:33:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UTENTI_SELECTONE]
(
	@CodiceUtente int
)
AS
BEGIN
	SELECT * from UTENTI where CodiceUtente=@CodiceUtente
END
GO
