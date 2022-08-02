USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[UTENTI_ABILITATO]    Script Date: 8/2/2022 4:33:05 PM ******/
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
