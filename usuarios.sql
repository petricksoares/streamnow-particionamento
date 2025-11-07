-- Tabela de Usuários
create table usuarios(
 id_usuario serial,
 nome varchar(100),
 pais varchar(50),
 data_cadastro date,
 plano varchar(20)
)partition by list (pais);

create table usuarios_br partition of usuarios
for values in ('Brasil');

create table usuarios_ca partition of usuarios
for values in ('Canada');

create table usuarios_it partition of usuarios
for values in ('Italia');

create table usuarios_de partition of usuarios
for values in ('Alemanha');

create table usuarios_jp partition of usuarios
for values in ('Japao');

create table usuarios_ar partition of usuarios
for values in ('Argentina');

-- Adicionando Dados a Tabela de Usuários
insert into usuarios (nome, pais, data_cadastro, plano) values
('Maria Silva', 'Brasil', '2024-01-10', 'Premium'),
('João Pereira', 'Brasil', '2023-11-25', 'Básico'),
('Ana Souza', 'Brasil', '2024-06-01', 'Premium'),
('Pedro Lima', 'Brasil', '2023-09-12', 'Básico');

insert into usuarios (nome, pais, data_cadastro, plano) values
('Alex Johnson', 'Canada', '2024-03-01', 'Premium'),
('Emily Chen', 'Canada', '2023-08-15', 'Básico'),
('David Smith', 'Canada', '2024-04-20', 'Premium'),
('Laura White', 'Canada', '2024-02-05', 'Básico');

insert into usuarios (nome, pais, data_cadastro, plano) values
('Luca Rossi', 'Italia', '2024-05-20', 'Premium'),
('Giulia Bianchi', 'Italia', '2023-10-05', 'Básico'),
('Marco Verdi', 'Italia', '2024-01-30', 'Básico'),
('Elena Neri', 'Italia', '2024-06-25', 'Premium');

insert into usuarios (nome, pais, data_cadastro, plano) values
('Hans Müller', 'Alemanha', '2024-02-14', 'Premium'),
('Lena Wagner', 'Alemanha', '2023-07-01', 'Básico'),
('Klaus Weber', 'Alemanha', '2024-05-10', 'Premium'),
('Petra Schulz', 'Alemanha', '2023-12-08', 'Básico');

insert into usuarios (nome, pais, data_cadastro, plano) values
('Kenji Tanaka', 'Japao', '2024-04-05', 'Premium'),
('Yumi Sato', 'Japao', '2023-12-20', 'Básico'),
('Taro Suzuki', 'Japao', '2024-03-17', 'Premium'),
('Aiko Nakamura', 'Japao', '2023-10-14', 'Básico');

-- Exibindo usuário de cada país
 SELECT tableoid::regclass AS particao,*
 FROM usuarios;