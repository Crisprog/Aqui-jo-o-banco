	--Criar uma trigger para a tabela tbAluno quando for inserido um registro
	CREATE TRIGGER trgcoodemador  --FOI FEITO ALTERA��O,DELETE OU INSER��O

	ON Coodenador

	FOR INSERT
	AS
	BEGIN

	DECLARE
		@RA int = 2,
		@Nome varchar(100);

	SELECT 
		@RA = RA,
		@Nome = Nome
	FROM
		INSERTED

	INSERT INTO Email
	(
		Destinatario,
		Assunto,
		Campo
	)
	VALUES
	(
		'professor@gmail.com',
		'Novo aluno cadastrado',
		'Aula nova foi colocada,' + CAST(@RA AS VARCHAR) + ' nome: ' + @Nome
	)

END
