use centreformation;
ALTER TABLE registration
ADD COLUMN numInscription VARCHAR(255);

alter table registration add column numinscription varchar(20);
select codeSess, numCniEtu, concat(codeSess,'', numCniEtu) as numinscription
from registration;

UPDATE formation
SET titreForm = 'développement Java'
WHERE codeForm = 11;

UPDATE registration
SET typeCours = 'distanciel'
WHERE numCniEtu = 'G5346789';

set sql_safe_updates = 0;
UPDATE etudiant
SET  villeEtu = 'Kenitra'
WHERE nomEtu = 'Alami' ;

UPDATE etudiant
SET  dateNaissance = '1987-01-02'
WHERE nomEtu = 'Alami' ;

select * from etudiant where nomEtu = 'Alami' ;
