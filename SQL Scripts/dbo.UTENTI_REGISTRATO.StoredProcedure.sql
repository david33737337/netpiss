USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_REGISTRATO]    Script Date: 8/4/2022 8:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UTENTI_REGISTRATO]
(
	@email nvarchar(50)
)
as
begin
	select *
	from UTENTI
	WHERE email=@email
end
GO
