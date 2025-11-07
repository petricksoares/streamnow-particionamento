create table reproducoes(
 id_reproducao serial,
 data_reproducao date,
 duracao_segundos int,
 categoria varchar(100)
)partition by range (data_reproducao);

create table reproducoes_2025_01 partition of reproducoes
    for values from ('2025-01-01') to ('2025-02-01');

create table reproducoes_2025_02 partition of reproducoes
    for values from ('2025-02-01') to ('2025-03-01');

create table reproducoes_2025_03 partition of reproducoes
    for values from ('2025-03-01') to ('2025-04-01');

create table reproducoes_2025_04 partition of reproducoes
    for values from ('2025-04-01') to ('2025-05-01');

create table reproducoes_2025_05 partition of reproducoes
    for values from ('2025-05-01') to ('2025-06-01');

create table reproducoes_2025_06 partition of reproducoes
    for values from ('2025-06-01') to ('2025-07-01');

create table reproducoes_2025_07 partition of reproducoes
    for values from ('2025-07-01') to ('2025-08-01');

create table reproducoes_2025_08 partition of reproducoes
    for values from ('2025-08-01') to ('2025-09-01');

create table reproducoes_2025_09 partition of reproducoes
    for values from ('2025-09-01') to ('2025-10-01');

create table reproducoes_2025_10 partition of reproducoes
    for values from ('2025-10-01') to ('2025-11-01');

create table reproducoes_2025_11 partition of reproducoes
    for values from ('2025-11-01') to ('2025-12-01');

create table reproducoes_2025_12 partition of reproducoes
    for values from ('2025-12-01') to ('2026-01-01');

insert into reproducoes (data_reproducao, duracao_segundos, categoria)
values 
('2025-01-05', 210, 'ação'),
('2025-01-15', 180, 'terror'),
('2025-01-25', 240, 'comédia'), 
('2025-02-03', 200, 'drama'),
('2025-02-14', 250, 'romance'),
('2025-02-27', 190, 'ficção científica'), 
('2025-03-01', 175, 'aventura'),
('2025-03-10', 260, 'documentário'),
('2025-03-30', 230, 'animação'), 
('2025-04-04', 200, 'suspense'),
('2025-04-15', 245, 'fantasia'),
('2025-04-27', 180, 'musical'), 
('2025-05-02', 195, 'guerra'),
('2025-05-16', 210, 'mistério'),
('2025-05-28', 300, 'biografia'), 
('2025-06-05', 220, 'infantil'),
('2025-06-18', 180, 'ação'),
('2025-06-25', 240, 'romance'), 
('2025-07-07', 200, 'comédia'),
('2025-07-15', 250, 'terror'),
('2025-07-28', 260, 'ficção científica'), 
('2025-08-03', 190, 'drama'),
('2025-08-14', 230, 'aventura'),
('2025-08-30', 210, 'animação'), 
('2025-09-01', 220, 'fantasia'),
('2025-09-12', 250, 'documentário'),
('2025-09-25', 240, 'ação'), 
('2025-10-05', 190, 'comédia'),
('2025-10-18', 280, 'drama'),
('2025-10-27', 210, 'terror'), 
('2025-11-03', 230, 'romance'),
('2025-11-16', 260, 'aventura'),
('2025-11-29', 195, 'infantil'), 
('2025-12-05', 205, 'fantasia'),
('2025-12-15', 240, 'ação'),
('2025-12-28', 300, 'ficção científica');

-- Exibindo reprodução de cada mês
 SELECT tableoid::regclass AS particao,*

 FROM reproducoes;
