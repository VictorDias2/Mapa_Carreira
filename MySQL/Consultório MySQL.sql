create database Consultorio; /*Criei DB*/
use Consultorio; /*Troquei*/

drop database Consultorio; /*Delete*/


create table Paciente(
	pk_id_paciente int auto_increment primary key,
    nome_paciente varchar(50) not null,
    data_nascimento_paciente date not null,
    cpf_paciente char(11) not null unique, /*not num: campo obrigatório*/ /*unique: campo único, se tiver outro igual da erro*/
    genero_paciente enum('f','m','o'),
    endereco_paciente varchar(100),
    email_paciente varchar(80) unique,
    telefone_paciente char(13)
);

insert into Paciente(nome_paciente, data_nascimento_paciente, cpf_paciente, genero_paciente, endereco_paciente, email_paciente, telefone_paciente) values
	('João da Silva', '1987-10-27', '91065397654', 'm', 'Rua Nove, 10', 'joao2015@Gmail.com', '5511912341234'),
	('Victor Giovanni', '2004-02-20', '12312312312', 'm', 'Janinho Quadrinhos, 42', 'victor@senacsp.edu.br', '5511995651245'),
	('Mai Freitas', '1977-11-02', '26075997654', 'f', 'Rua Nove, 10', 'MaiF3030@Outlook.com.br', '5511912348234'),
	('Iara Oliveira', '1920-10-12', '51065921654', 'f', 'Pinheiros, 20', 'Iarinha2@gmail.com.br', '5511922348234'),
	('Carlos Eduardo da Silva', '2007-02-03', '98065921654', 'm', 'Na Lapa, 22', 'Carloseduardorios@hotmail.com.br', '5511922348123'),
	('Ana Clara Mendes', '1990-05-15', '3456789', 'f', 'Avenida das Flores, 55', 'anaclara@gmail.com', '5511987654321'),
	('Rafael Souza', '1982-07-23', '1234567', 'm', 'Rua das Palmeiras, 30', 'rafael.souza@hotmail.com', '5511945678901'),
	('Sofia Martins', '1985-09-11', '9876543', 'f', 'Praça do Comércio, 11', 'sofia.martins@gmail.com', '5511934567890'),
	('Lucas Ferreira', '1993-03-30', '3216549', 'm', 'Avenida Nova, 10', 'lucas.ferreira@gmail.com', '5511973216548'),
	('Fernanda Lima', '1989-12-05', '6543210', 'f', 'Rua da Esperança, 77', 'fernanda.lima@yahoo.com', '5511923456789');
drop table Paciente;



create table Dentista(
	pk_id_dentista int auto_increment primary key,
    nome_dentista varchar(50) not null,
    data_nascimento_dentista date not null,
    cro_dentista char(7) not null unique,
    genero_dentista enum('f','m','o'),
    endereco_dentista varchar(100),
    email_dentista varchar(80) unique,
    telefone_dentista char(13)
);

insert into Dentista(nome_dentista, data_nascimento_dentista, cro_dentista, genero_dentista, endereco_dentista, email_dentista, telefone_dentista) values
	('Carlos Silva', '1985-05-10', '7894563', 'm', 'Avenida da Saúde, 45', 'Carlos.Silva@gmail.com', '5511934567890'),
	('Juliana Almeida', '1992-08-20', '1234567', 'f', 'Rua das Flores, 33', 'Juliana.Almeida@gmail.com', '5511943214567'),
	('Roberto Lima', '1978-03-15', '4567890', 'm', 'Praça do Comércio, 18', 'RobertoLima@yahoo.com', '5511978456321'),
	('Fernanda Costa', '1980-11-11', '2345678', 'f', 'Rua das Acácias, 25', 'Fernanda.Costa@gmail.com', '5511987654321'),
	('Eduardo Mendes', '1995-02-05', '8765432', 'm', 'Avenida Central, 100', 'EduardoMendes@hotmail.com', '5511912345678'),
	('Tatiane Oliveira', '1988-06-22', '3456789', 'f', 'Rua do Lago, 75', 'Tatiane.Oliveira@gmail.com', '5511998765432'),
	('Leonardo Sousa', '1991-04-30', '1597532', 'm', 'Rua das Palmeiras, 55', 'Leonardo.Sousa@gmail.com', '5511923654789'),
	('Patrícia Martins', '1993-09-17', '7531598', 'f', 'Avenida Nova, 90', 'Patricia.Martins@hotmail.com', '5511947894561'),
	('Gustavo Pereira', '1983-01-12', '9517536', 'm', 'Rua do Sol, 10', 'Gustavo.Pereira@gmail.com', '5511973216548'),
	('Bianca Ferreira', '1990-10-05', '1472583', 'f', 'Rua das Oliveiras, 88', 'Bianca.Ferreira@gmail.com', '5511963247890');
drop table Dentista;



create table Consulta(
	pk_id_consulta int auto_increment primary key,
    local_consulta varchar(50),
    data_consulta datetime,
    descricao text
);

insert into Consulta(local_consulta, data_consulta, descricao) values
	('Rua do Lago, 15', '2024-11-05 09:30:00', 'Consulta de medicina geral'),
    ('Avenida Nova, 90', '2024-11-12 11:00:00', 'Avaliação nutricional'),
    ('Rua dos Sinos, 33', '2024-12-01 14:00:00', 'Tratamento de fisioterapia'),
    ('Praça da Liberdade, 55', '2024-12-10 10:30:00', 'Consulta ginecológica'),
    ('Rua do Pôr do Sol, 7', '2025-01-02 13:00:00', 'Consulta de pediatria'),
    ('Avenida dos Esportes, 22', '2025-01-15 09:00:00', 'Exame de ressonância'),
    ('Rua do Mercado, 100', '2025-01-25 16:00:00', 'Consulta de urologia'),
    ('Estrada do Mar, 44', '2025-02-05 11:15:00', 'Consulta de alergologia'),
    ('Rua das Oliveiras, 18', '2025-02-20 10:45:00', 'Consulta de neurologia'),
    ('Avenida da Saúde, 12', '2025-03-01 15:30:00', 'Check-up anual');
drop table Consulta;


describe table Paciente; /*estrutura da tabela*/
describe table Dentista;
describe table Consulta;

select * from Paciente; /*descrição e dados da tabela*/
select * from Dentista;
select * from Consulta;