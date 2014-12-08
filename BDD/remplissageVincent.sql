--DESCRIPTEUR
INSERT ALL 
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bordeaux','Vin de Bordeaux'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bourgogne','Vin de Bourgone'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Champagne','CHAMPAGNE!!'))
	--VEDETTE
	--VIN
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Rouge','C''est pas blanc'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Blanc','C''est pas rouge'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Rosé','C''est pour les filles'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Pétillant','C''est pas plat'))		
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Vin', 'C''est du vin'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Alcool','C''est alcolisée'))
SELECT * FROM dual;

--DESCRIPTEUR VEDETTE
INSERT ALL 
	INTO DESCRIPTEUR_VEDETTE VALUES ('Rouge')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Blanc')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Rosé')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Pétillant')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Vin')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Alcool')
SELECT * FROM dual;


--CONCEPT
INSERT ALL 
	INTO CONCEPT VALUES ('Rouge')
	INTO CONCEPT VALUES ('Blanc')
	INTO CONCEPT VALUES ('Rosé')
	INTO CONCEPT VALUES ('Pétillant')
	INTO CONCEPT VALUES ('Alcool')
	INTO CONCEPT VALUES ('Vin')
SELECT * FROM dual;


--SYNONYME Descripteur-Descripteur
INSERT ALL 
	INTO SYNONYME  VALUES ('Rouge','Red')
SELECT * FROM dual;


--ASSOCIATION Descripteur-DescripteurVedette
INSERT ALL 
	
SELECT * FROM dual;


--SPECIALISATION_DESCRIPTEUR DescripteurVedette-Concept
INSERT ALL 
	
SELECT * FROM dual;	

--SPECIALISATION_CONCEPT Concept-Concept qui est spécialisé
INSERT ALL 

SELECT * FROM dual;
