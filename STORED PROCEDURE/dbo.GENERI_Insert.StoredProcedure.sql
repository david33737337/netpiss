USE [NETFLIX]
GO
/****** Object:  StoredProcedure [dbo].[GENERI_Insert]    Script Date: 04/08/2022 12:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GENERI_Insert]
(
	@DescrizioneGenere nvarchar(max)
)
AS
BEGIN
	
	Insert into GENERI values (@DescrizioneGenere)
END
GO
