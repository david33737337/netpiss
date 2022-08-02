USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_UPDATE_PASSWORD]    Script Date: 8/2/2022 4:33:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UTENTI_UPDATE_PASSWORD]
(
	@email nvarchar(50),
	@password nvarchar(50)
)
as
begin
	UPDATE UTENTI
	set password=@password
	WHERE email=@email
end
GO
