--DESCRIPTEUR
INSERT ALL 
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Rouge','C est pas blanc a fortiori'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Blanc','C est pas Michel'))	
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Red', 'It red'))	
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Vin', 'It red'))	
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Alcool', 'It red'))	
SELECT * FROM dual;

--DESCRIPTEUR VEDETTE
INSERT ALL 
	INTO DESCRIPTEUR_VEDETTE VALUES ('Vin')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Alcool')
SELECT * FROM dual;


--CONCEPT
INSERT ALL 
	INTO CONCEPT VALUES ('Alcool')
	INTO CONCEPT VALUES ('Vin')
SELECT * FROM dual;


--SYNONYME Descripteur-Descripteur
INSERT ALL 
	INTO SYNONYME  VALUES ('Rouge','Red')
SELECT * FROM dual;


--ASSOCIATION Descripteur-DescripteurVedette
INSERT ALL 
	INTO ASSOCIATION VALUES	('Rouge', 'Vin')
SELECT * FROM dual;


--SPECIALISATION_DESCRIPTEUR DescripteurVedette-Concept
INSERT ALL 
	INTO SPECIALISATION_DESCRIPTEUR VALUES	('Vin', 'Alcool')
SELECT * FROM dual;	

--SPECIALISATION_CONCEPT Concept-Concept qui est spécialisé
INSERT ALL 

SELECT * FROM dual;
