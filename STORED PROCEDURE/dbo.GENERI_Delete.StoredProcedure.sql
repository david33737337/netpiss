USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[GENERI_Delete]    Script Date: 04/08/2022 12:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GENERI_Delete]
(
	@CodiceGenere int	
)
AS
BEGIN
	
	delete from GENERI where CodiceGenere=@CodiceGenere
END
GO
