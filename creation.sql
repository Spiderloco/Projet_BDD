drop table SYNONYME;
drop table SPECIALISATIOND;
drop table ASSOCIATION;
drop table SPECIALISATIONC;

drop type Concept_T;
drop type DescripteurVedette_T;
drop type Descripteur_T;



create type Descripteur_T as object
	(Libelle varchar2(25));
/

create type DescripteurVedette_T as object
	(Descripteur Descripteur_T);
/

create type Concept_T as object
	(
		Libelle varchar2(25),
		DescripteurV DescripteurVedette_T
	);
/

create table DESCRIPEUR of Descripteur_T(

);

create table DESCRIPEURVEDETTE of DescripteurVedette_T;

create table CONCEPT of Concept_T;


create table SYNONYME(
	Descripteur Descripteur_T,
	DescripteurV DescripteurVedette_T
);

create table SPECIALISATIOND(
	DescripteurSpecialise Descripteur_T,
	DescripteurSpecialisant Descripteur_T	
);

create table ASSOCIATION(
	DescripteurUn Descripteur_T,
	DescripteurDeux Descripteur_T
);


create table SPECIALISATIONC(
	ConceptSpecialise Concept_T,
	ConceptSpecialisant Concept_T
);
