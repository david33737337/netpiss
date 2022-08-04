USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_INSERT]    Script Date: 8/4/2022 8:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UTENTI_INSERT]
(
	@email nvarchar(50),
	@password nvarchar(50)
)
as
begin
	INSERT INTO UTENTI (TipologiaUtente, email, password)
	VALUES ('U',@email, @password)
end
GO
