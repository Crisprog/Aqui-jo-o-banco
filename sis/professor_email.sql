--Criar uma trigger para a tabela tbAluno quando for inserido um registro
CREATE TRIGGER EnviaAula_profe

ON Professor

FOR INSERT
AS
BEGIN

	DECLARE
		@RA int,
		@Nome varchar(100);

	SELECT 
		RA,
		Nome
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
		'coodenador@gmail.com',
		'Nova aula cadastrado',
		'Aula nova foi colocada,' + CAST(@RA AS VARCHAR) + ' nome: ' + @Nome
	)

END