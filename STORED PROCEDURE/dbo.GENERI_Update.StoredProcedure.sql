USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[GENERI_Update]    Script Date: 04/08/2022 12:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GENERI_Update]
(
	@CodiceGenere int,
	@DescrizioneGenere nvarchar(MAX)
)
AS
BEGIN
	
	update GENERI set DescrizioneGenere = @DescrizioneGenere where @CodiceGenere = CodiceGenere
END
GO
