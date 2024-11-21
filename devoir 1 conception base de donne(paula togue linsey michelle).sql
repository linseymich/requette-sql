use centreformation;
alter table inscription rename to registration;
alter table appartient rename to catalogue;
alter table specialite add column Actives integer;
INSERT INTO etudiant (NumCniEtu, nomEtu, prenomEtu, dateNaissance, adresseEtu, villeEtu, niveauEtu) VALUES 
('AB234567', 'Alami', 'Ahmad', '1986-01-01', 'Rue du port, 13', 'Tanger', 'bac'),
('G5346789', 'Toumi', 'Aicha', '2000-03-12', 'N12 Immeuble Jaouhara', 'Casablanca', 'Master'),
('C0987265', 'Souni', 'Sanaa', '1998-04-30', 'Place du peuple n.2', 'Tanger', 'Niveau bac'),
('D2356903', 'Idrissi Alami', 'Mohammed', '1996-05-05', 'Lotissement najah, rue n 12 immeuble 3', 'Rabat', 'Bac +4'),
('Y1234987', 'Ouled thami', 'Ali', '1979-12-04', 'La ville haute, rue chouhada n 6', 'Tanger', 'Bachelor'),
('J3578902', 'Ben Omar', 'Abd Allah', '1990-06-25', 'Villa Amira n12 bir amri', 'Kenitra', 'Phd'),
('F9827363', 'Boulaid', 'Fatima Zohra', '1997-01-10', 'Immeuble iftikhar, n 13 ettakkadoum', 'Rabat', 'Bac + 2');
INSERT INTO formation (codeForm, titreForm, dureeForm, prixForm) VALUES 
(11, 'Programming Java', 12, 3600),
(12, 'web developpment', 14, 4200),
(13, 'Anglais technique', 15, 3750),
(14, 'Communication', 10, 2500),
(15, 'Base de données Oracle', 20, 6000),
(16, 'Soft skills', 12, 3000);
INSERT INTO sessions (codeSess, nomSess, DateDebut, DateFin, codeForm) VALUES 
(1101, 'Session1101', '2022-01-02', '2022-01-14', 11),
(1102, 'Session 1102', '2022-02-03', '2022-02-15', 11),
(1201, 'Session 1201', '2022-03-04', '2022-03-18', 12),
(1202, 'Session 1202', '2022-04-05', '2022-04-19', 12),
(1301, 'Session 1301', '2022-01-06', '2022-01-21', 13),
(1302, 'Session 1302', '2022-05-07', '2022-05-22', 13),
(1303, 'Session 1303', '2022-06-08', '2022-06-23', 13),
(1401, 'Session 1401', '2022-09-01', '2022-09-14', 14),
(1402, 'Session 1402', '2022-08-08', '2022-08-18', 14),
(1501, 'Session 1501', '2022-11-11', '2022-12-01', 15),
(1502, 'Session 1502', '2022-09-12', '2022-10-02', 15),
(1601, 'Session 1601', '2022-09-13', '2022-09-25', 16),
(1602, 'Session 1602', '2022-10-14', '2022-10-26', 16),
(1104, 'Session 1104', '2022-10-15', '2022-10-27', 11),
(1203, 'Session 1203', '2022-11-16', '2022-11-30', 12),
(1204, 'Session 1204', '2022-12-17', '2022-12-31', 12);
INSERT INTO  specialite (codeSpec, nomSpec, descSpec, Actives) VALUES 
(101, 'GL', 'Genie logiciel et developpement', 1),
(102, 'Data', 'Data engineering', 1),
(103, 'Langues', 'Anglais, Français', 1),
(104, 'Communication', 'Communication', 1),
(105, 'Securite', 'Reseaux et securite', 0);
INSERT INTO catalogue (codeSpec, codeForm) VALUES 
(101, 11),
(101, 12),
(102, 15),
(103, 13),
(104, 14),
(104, 16);
INSERT INTO registration (typeCours,codeSess,NumCniEtu ) VALUES 
('Distanciel', 1101, 'AB234567'),
('Distanciels', 1101, 'G5346789'),
('Distanciele', 1101, 'C0987265'),
('Distancie', 1101, 'D2356903'),
('Distancieles', 1101, 'Y1234987'),
('Distance', 1101, 'J3578902'),
('Distancl', 1101, 'F9827363'),
('Présentiels', 1201, 'AB234567'),
('Présentiele', 1201, 'G5346789'),
('Présentieles', 1201, 'C0987265');