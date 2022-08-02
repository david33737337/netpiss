USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_INSERT]    Script Date: 8/2/2022 4:33:05 PM ******/
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
	INSERT INTO UTENTI (email, password)
	VALUES (@email, @password)
end
GO
