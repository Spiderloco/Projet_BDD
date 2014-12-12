--DESCRIPTEUR
INSERT ALL 
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Château Lafite-Rothschild','Pauillac'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Chäteau Latour','Pauillac'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Château Margaux','Margaux')) 
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Château Mouton-Rothschild','Pauillac'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Château Haut-Brion','Pessac'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bordeaux','Vin de Bordeaux'))
	--
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Vignoble de Chablis','Vignoble de Chablis'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Vignoble de la côte de Nuits','Vignoble de la côte de Nuits'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bourgogne','Vin de Bourgogne'))
	--
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Huitième','9,4 cl (inusité)'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Quart','18,75 ou 20 cl (utilisé par les compagnies aériennes et parfois dans les boîtes de nuit)'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Demie','37,5 cl (vendue en restaurant)'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Médium','60 cl (inusité)'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bouteille','75 cl (la plus vendue)'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Magnum','1,5 l soit deux bouteilles. L''expérience montre que le vin de Champagne se conserve le mieux dans un magnum, il y vieillit plus lentement, assurant au nectar une excellente longévité. Un magnum de champagne déçoit rarement et il est recommandé au-delà de quatre convives ; à l''opposé, le champagne en demie — et a fortiori en quart — ne bénéficie pas des meilleures conditions de vieillissement.'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Jéroboam','3 l soit quatre bouteilles, est le plus demandé des grands flacons.'))
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
	INTO DESCRIPTEUR_VEDETTE VALUES ('Bourgogne')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Bordeaux')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Champagne')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Rouge')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Blanc')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Rosé')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Pétillant')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Vin')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Alcool')
SELECT * FROM dual;


--CONCEPT
INSERT ALL 
	INTO CONCEPT VALUES ('Bourgogne')
	INTO CONCEPT VALUES ('Bordeaux')
	INTO CONCEPT VALUES ('Champagne')
	INTO CONCEPT VALUES ('Rouge')
	INTO CONCEPT VALUES ('Blanc')
	INTO CONCEPT VALUES ('Rosé')
	INTO CONCEPT VALUES ('Pétillant')
	INTO CONCEPT VALUES ('Alcool')
	INTO CONCEPT VALUES ('Vin')
SELECT * FROM dual;


--SYNONYME Descripteur-Descripteur
INSERT ALL 

SELECT * FROM dual;


--ASSOCIATION Descripteur-DescripteurVedette
INSERT ALL 
	INTO ASSOCIATION VALUES ('Château Lafite-Rothschild','Bordeaux')
	INTO ASSOCIATION VALUES ('Chäteau Latour','Bordeaux')
	INTO ASSOCIATION VALUES ('Château Margaux','Bordeaux')
	INTO ASSOCIATION VALUES ('Château Mouton-Rothschild','Bordeaux')
	INTO ASSOCIATION VALUES ('Château Haut-Brion','Bordeaux')
	--
	INTO ASSOCIATION VALUES ('Vignoble de Chablis','Bourgogne')
	INTO ASSOCIATION VALUES ('Vignoble de la côte de Nuits','Bourgogne')
	--
	INTO ASSOCIATION VALUES ('Huitième','Champagne')
	INTO ASSOCIATION VALUES ('Quart','Champagne')
	INTO ASSOCIATION VALUES ('Demie','Champagne')
	INTO ASSOCIATION VALUES ('Médium','Champagne')
	INTO ASSOCIATION VALUES ('Bouteille','Champagne')
	INTO ASSOCIATION VALUES ('Magnum','Champagne')
	INTO ASSOCIATION VALUES ('Jéroboam','Champagne')
SELECT * FROM dual;


--SPECIALISATION_DESCRIPTEUR DescripteurVedette-Concept
INSERT ALL 

SELECT * FROM dual;	

--SPECIALISATION_CONCEPT Concept-Concept qui est spécialisé
INSERT ALL 
	INTO SPECIALISATION_CONCEPT VALUES('Bourgogne', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Bordeaux', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Champagne', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Rouge', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Blanc', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Rosé', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Pétillant', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Vin', 'Alcool')
SELECT * FROM dual;
