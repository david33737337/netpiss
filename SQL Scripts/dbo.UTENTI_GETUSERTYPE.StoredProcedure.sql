USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_GETUSERTYPE]    Script Date: 8/4/2022 8:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UTENTI_GETUSERTYPE]
(
	@email nvarchar(50)
)
AS
BEGIN
	SELECT TipologiaUtente from UTENTI where email=@email
END
GO
