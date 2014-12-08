/*DESCRIPTEUR*/
INSERT ALL 
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Rouge','C est pas blanc'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Blanc','C est pas rouge'))	
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Red', 'It red'))	
SELECT * FROM dual;

/*DESCRIPTEUR VEDETTE*/
INSERT ALL 
	INTO DESCRIPTEUR_VEDETTE VALUES (DescripteurVedette_T ('Vin', 'C est pas de la piquette'))
SELECT * FROM dual;


/*CONCEPT*/
INSERT ALL 
	INTO CONCEPT VALUES (Concept_t ('Alcool','C est bon!'))
	INTO CONCEPT VALUES (Concept_t ('Binouze','Pas '))
SELECT * FROM dual;


/*SYNONYME Descripteur-Descripteur*/
INSERT ALL 
	INTO SYNONYME  VALUES ('Rouge','Red')
SELECT * FROM dual;


/*ASSOCIATION Descripteur-DescripteurVedette*/
INSERT ALL 
	INTO ASSOCIATION VALUES	('Rouge', 'Vin')
SELECT * FROM dual;


/*SPECIALISATION_DESCRIPTEUR DescripteurVedette-Concept*/
INSERT ALL 
	INTO SPECIALISATION_DESCRIPTEUR VALUES	('Vin', 'Alcool')
SELECT * FROM dual;	

/*SPECIALISATION_CONCEPT Concept-Concept qui est spécialisé*/
INSERT ALL 
	INTO SPECIALISATION_CONCEPT VALUES	('Binouze','Alcool')
SELECT * FROM dual;
