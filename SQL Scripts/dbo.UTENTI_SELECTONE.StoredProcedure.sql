USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_SELECTONE]    Script Date: 8/4/2022 8:55:27 AM ******/
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
