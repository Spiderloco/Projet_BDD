drop table SYNONYME;
drop table SPECIALISATION_DESCRIPTEUR;
drop table ASSOCIATION;
drop table SPECIALISATION_CONCEPT;
drop table CONCEPT;
drop table DESCRIPTEUR_VEDETTE;
drop table DESCRIPTEUR;
drop type Descripteur_T FORCE;


create type Descripteur_T as object(
	Libelle varchar2(100),
	Description varchar2(500)
	);
/


create table DESCRIPTEUR of Descripteur_T(
	Constraint pkDescripteur Primary Key(Libelle)
);

create table DESCRIPTEUR_VEDETTE( 
	DescripteurVedette varchar2(25),
	Constraint DVDesV Foreign Key(DescripteurVedette) References DESCRIPTEUR,
	Constraint pkDescripteurVedette Primary Key(DescripteurVedette)
);

create table CONCEPT(
	Concept varchar2(25),
	Constraint CCon Foreign Key(Concept) References DESCRIPTEUR,
	Constraint pkConcept Primary Key(Concept)
);



create table SYNONYME(
	Descripteur varchar2(25),
	Descripteur2  varchar2(25),
	Constraint SDes Foreign Key(Descripteur) References DESCRIPTEUR,
	Constraint SDes2 Foreign Key(Descripteur2) References DESCRIPTEUR
);

create table ASSOCIATION(
	Descripteur varchar2(25),
	DescripteurVedette varchar2(25),
	Constraint ADes Foreign Key(Descripteur) References DESCRIPTEUR,
	Constraint ADesV Foreign Key(DescripteurVedette) References DESCRIPTEUR_VEDETTE
);


create table SPECIALISATION_DESCRIPTEUR(
	DescripteurV varchar2(25),
	Concept varchar2(25),
	Constraint SDDes Foreign Key(DescripteurV) References DESCRIPTEUR_VEDETTE,
	Constraint SDCon Foreign Key(Concept) References CONCEPT,
	Constraint pkSD Primary Key (Concept)
);



create table SPECIALISATION_CONCEPT(
	ConceptSpecialise varchar2(25),
	ConceptSpecialisant varchar2(25),
	Constraint SCConS Foreign Key(ConceptSpecialise) References CONCEPT,
	Constraint SCConS2 Foreign Key(ConceptSpecialisant) References CONCEPT
);
