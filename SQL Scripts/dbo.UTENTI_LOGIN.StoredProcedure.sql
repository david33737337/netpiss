USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_LOGIN]    Script Date: 8/2/2022 4:33:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UTENTI_LOGIN]
(
	@email nvarchar(50),
	@password nvarchar(50)
)
as
begin
	select *
	from UTENTI
	WHERE email=@email
		and password=@password
end
GO
