USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[GENERI_CheckOne]    Script Date: 04/08/2022 12:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GENERI_CheckOne]
(
	@DescrizioneGenere nvarchar(max)	
)
AS
BEGIN
	
	select * from GENERI 
	where DescrizioneGenere=@DescrizioneGenere
END
GO
