USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_SELECTALL]    Script Date: 8/2/2022 4:33:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UTENTI_SELECTALL]


AS
BEGIN
	select * from UTENTI
END

delete from UTENTI where CodiceUtente = 7
select * from UTENTI
GO
