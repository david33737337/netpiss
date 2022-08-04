USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_ABILITATO]    Script Date: 8/4/2022 8:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[UTENTI_ABILITATO]
(
	@email varchar(50)
)
as
begin
	select *
	from UTENTI
	where email=@email
end
GO
