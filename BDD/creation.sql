drop table SYNONYME;
drop table SPECIALISATION_DESCRIPTEUR;
drop table ASSOCIATION;
drop table SPECIALISATION_CONCEPT;
drop table CONCEPT;
drop table DESCRIPTEUR_VEDETTE;
drop table DESCRIPTEUR;
drop type Concept_T;
drop type DescripteurVedette_T FORCE;
drop type Descripteur_T FORCE;

create type Descripteur_T as object(
	Libelle varchar2(25),
	Description varchar2(500)
	);
/

create type DescripteurVedette_T as object(
	Libelle varchar2(25),
	Description varchar2(500)
	);
/

create type Concept_T as object(
	Libelle varchar2(25),
	Description varchar2(500)
	);
/

create table DESCRIPTEUR of Descripteur_T(
	Constraint pkDescripteur Primary Key(Libelle)
);

create table DESCRIPTEUR_VEDETTE of DescripteurVedette_T( 
	Constraint pkDescripteurVedette Primary Key(Libelle)
);

create table CONCEPT of Concept_T(
	Constraint pkConcept Primary Key(Libelle)
);



create table SYNONYME(
	Descripteur varchar2(25),
	Descripteur2  varchar2(25),
	Constraint pkSDes Foreign Key(Descripteur) References DESCRIPTEUR,
	Constraint pkSDes2 Foreign Key(Descripteur2) References DESCRIPTEUR
);

create table ASSOCIATION(
	Descripteur varchar2(25),
	DescripteurVedette varchar2(25),
	Constraint pkADes Foreign Key(Descripteur) References DESCRIPTEUR,
	Constraint pkADesV Foreign Key(DescripteurVedette) References DESCRIPTEUR_VEDETTE
);


create table SPECIALISATION_DESCRIPTEUR(
	DescripteurV varchar2(25),
	Concept varchar2(25),
	Constraint pkSDDes Foreign Key(DescripteurV) References DESCRIPTEUR_VEDETTE,
	Constraint pkSDCon Foreign Key(Concept) References CONCEPT
);



create table SPECIALISATION_CONCEPT(
	ConceptSpecialise varchar2(25),
	ConceptSpecialisant varchar2(25),
	Constraint pkSCConS Foreign Key(ConceptSpecialise) References CONCEPT,
	Constraint pkSCConS2 Foreign Key(ConceptSpecialisant) References CONCEPT
);
