USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_REGISTRATO]    Script Date: 8/2/2022 4:33:05 PM ******/
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
