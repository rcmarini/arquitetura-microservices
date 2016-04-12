insert into cliente (id, nome, cpf_cnpj) values (1, 'Cliente 1', '9020930209320');
insert into cliente (id, nome, cpf_cnpj) values (2, 'Cliente 2', '0909278738738');
insert into cliente (id, nome, cpf_cnpj) values (3, 'Cliente 3', '8020930292887');
insert into cliente (id, nome, cpf_cnpj) values (4, 'Cliente 4', '1020967292882');
insert into cliente (id, nome, cpf_cnpj) values (5, 'Cliente 5', '2038730292890');

insert into modelo (id, nome, marca) values (1, 'Cruze', 'CHEVROLET');
insert into modelo (id, nome, marca) values (2, 'Camaro', 'CHEVROLET');
insert into modelo (id, nome, marca) values (3, 'Malobu', 'CHEVROLET');
insert into modelo (id, nome, marca) values (4, 'A3', 'AUDI');
insert into modelo (id, nome, marca) values (5, 'A4', 'AUDI');
insert into modelo (id, nome, marca) values (6, 'TT', 'AUDI');
insert into modelo (id, nome, marca) values (7, '118', 'BMW');
insert into modelo (id, nome, marca) values (8, '320', 'BMW');
insert into modelo (id, nome, marca) values (9, '328', 'BMW');
insert into modelo (id, nome, marca) values (10, 'Jetta', 'VOLKSWAGEN');
insert into modelo (id, nome, marca) values (11, 'Golf', 'VOLKSWAGEN');
insert into modelo (id, nome, marca) values (12, 'Passat', 'VOLKSWAGEN');
insert into modelo (id, nome, marca) values (13, 'Bravo', 'FIAT');
insert into modelo (id, nome, marca) values (14, 'Punto', 'FIAT');
insert into modelo (id, nome, marca) values (15, 'Fusion', 'FORD');
insert into modelo (id, nome, marca) values (16, 'Focus', 'FORD');
insert into modelo (id, nome, marca) values (17, 'New Fiesta', 'FORD');
insert into modelo (id, nome, marca) values (18, 'Evoque', 'LAND_ROVER');
insert into modelo (id, nome, marca) values (19, 'Range Rover Sport', 'LAND_ROVER');
insert into modelo (id, nome, marca) values (20, 'Classe A', 'MERCEDES');
insert into modelo (id, nome, marca) values (21, 'Classe B', 'MERCEDES');
insert into modelo (id, nome, marca) values (22, 'Optima', 'KIA');
insert into modelo (id, nome, marca) values (23, 'Cadenza', 'KIA');

insert into veiculo (id, nome, id_modelo) values (1, 'Cruze LTZ Aut', (select id from modelo where nome = 'Cruze'));
insert into veiculo (id, nome, id_modelo) values (2, 'Cruze LTZ Man', (select id from modelo where nome = 'Cruze'));
insert into veiculo (id, nome, id_modelo) values (3, 'Camaro SS', (select id from modelo where nome = 'Camaro'));
insert into veiculo (id, nome, id_modelo) values (4, 'A3 1.8T Attraction', (select id from modelo where nome = 'A3'));
insert into veiculo (id, nome, id_modelo) values (5, 'A3 1.4T', (select id from modelo where nome = 'A3'));
insert into veiculo (id, nome, id_modelo) values (6, 'A4 Attraction', (select id from modelo where nome = 'A4'));
insert into veiculo (id, nome, id_modelo) values (7, 'TT Attraction', (select id from modelo where nome = 'TT'));
insert into veiculo (id, nome, id_modelo) values (8, 'TT Ambition', (select id from modelo where nome = 'TT'));
insert into veiculo (id, nome, id_modelo) values (9, '118i', (select id from modelo where nome = '118'));
insert into veiculo (id, nome, id_modelo) values (10, '320i', (select id from modelo where nome = '320'));
insert into veiculo (id, nome, id_modelo) values (11, 'Jetta TSI', (select id from modelo where nome = 'Jetta'));
insert into veiculo (id, nome, id_modelo) values (12, 'Jetta Comforline', (select id from modelo where nome = 'Jetta'));
insert into veiculo (id, nome, id_modelo) values (13, 'Golf Comforline', (select id from modelo where nome = 'Golf'));
insert into veiculo (id, nome, id_modelo) values (14, 'Golf GTI', (select id from modelo where nome = 'Golf'));
insert into veiculo (id, nome, id_modelo) values (15, 'Passat', (select id from modelo where nome = 'Passat'));
insert into veiculo (id, nome, id_modelo) values (16, 'Passat CC', (select id from modelo where nome = 'Passat'));
insert into veiculo (id, nome, id_modelo) values (17, 'Bravo Essence', (select id from modelo where nome = 'Bravo'));
insert into veiculo (id, nome, id_modelo) values (18, 'Bravo T-Jet', (select id from modelo where nome = 'Bravo'));
insert into veiculo (id, nome, id_modelo) values (19, 'Punto Attractive', (select id from modelo where nome = 'Punto'));
insert into veiculo (id, nome, id_modelo) values (20, 'Punto T-Jet', (select id from modelo where nome = 'Punto'));
insert into veiculo (id, nome, id_modelo) values (21, 'Fusion iVCT', (select id from modelo where nome = 'Fusion'));
insert into veiculo (id, nome, id_modelo) values (22, 'Fusion GTDi 4WD', (select id from modelo where nome = 'Fusion'));
insert into veiculo (id, nome, id_modelo) values (23, 'Fusion Hybrid', (select id from modelo where nome = 'Fusion'));
insert into veiculo (id, nome, id_modelo) values (24, 'Focus Powershift', (select id from modelo where nome = 'Focus'));
insert into veiculo (id, nome, id_modelo) values (25, 'Focus Titanium', (select id from modelo where nome = 'Focus'));
insert into veiculo (id, nome, id_modelo) values (26, 'New Fiesta SE', (select id from modelo where nome = 'New Fiesta'));
insert into veiculo (id, nome, id_modelo) values (27, 'New Fiesta Titanium', (select id from modelo where nome = 'New Fiesta'));
insert into veiculo (id, nome, id_modelo) values (28, 'Evoque Pure', (select id from modelo where nome = 'Evoque'));
insert into veiculo (id, nome, id_modelo) values (29, 'Evoque Dynamic', (select id from modelo where nome = 'Evoque'));
insert into veiculo (id, nome, id_modelo) values (30, 'Range Rover Sport', (select id from modelo where nome = 'Range Rover Sport'));
insert into veiculo (id, nome, id_modelo) values (31, 'Classe A', (select id from modelo where nome = 'Classe A'));
insert into veiculo (id, nome, id_modelo) values (32, 'Classe B', (select id from modelo where nome = 'Classe B'));
insert into veiculo (id, nome, id_modelo) values (33, 'Optima', (select id from modelo where nome = 'Optima'));
insert into veiculo (id, nome, id_modelo) values (34, 'Cadenza', (select id from modelo where nome = 'Cadenza'));

SELECT setval('cliente_id_seq', (select max(id) from cliente));
SELECT setval('modelo_id_seq', (select max(id) from modelo));
SELECT setval('veiculo_id_seq', (select max(id) from veiculo));