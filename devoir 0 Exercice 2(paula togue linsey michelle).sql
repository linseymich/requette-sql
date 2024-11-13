create database centreformation;
Use centreformation;
create table etudiant(
NumCniEtu integer primary key,
NomEtu text,
prenomEtu text,
dateNaissance date,
adresseEtu text,
villeEtu text,
niveauEtu text
);
create table formation(
codeForm integer primary key,
titreForm text,
dureeForm time,
prixForm text
);

create table sessions(
codeSess integer primary key,
nomSess text,
dateDebut date,
dateFin date,
codeForm integer,
foreign key (codeForm) references formation(codeForm)
);
alter table session add constraint check_date
check (dateFin > dateDebut);
create table inscription(
typeCours integer primary key not null,
codeSess integer,
NumCniEtu integer,
foreign key (NumCniEtu) references etudiant(NumCniEtu),
foreign key (codeSess) references sessions(codeSess)
);
create table specialite(
codeSpec integer primary key,
nomSpec text,
descSpec text
);
 create table appartient(
 codeSpec integer,
 codeForm integer,
 foreign key (codeSpec) references specialite(codeSpec),
 foreign key (codeForm) references formation(codeForm)
 );