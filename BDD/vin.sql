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
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Rouge','La vinification en rouge consiste à faire un pressurage après que la fermentation a commencé. Pendant toute cette phase, le moût est en contact avec les matières solides de la vendange. Celles-ci sont très riches en tanins, matières colorantes, odorantes, minérales et azotées. Ces substances vont alors se dissoudre plus ou moins dans le moût et se retrouver dans le vin'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Blanc','Dans la vinification en blanc la fermentation se déroule en dehors de tout contact avec les parties solides de la vendange (pépins, peaux du raisin, rafles). Ce qui explique que l''on peut faire indifféremment du blanc à partir de cépages blancs et rouges. C''est le cas du Champagne. Le but de cette vinification est de faire ressortir le maximum des arômes contenus d''abord dans le raisin, ensuite en cours de fermentation, enfin lors du vieillisement'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Rosé','La vinification en rosé se produit par macération, limitée dans le temps, de cépages à pellicule noire avec possible ajout de cépages blancs. Le vin rosé n''a pas de définition légale. Mais ses techniques de vinification sont très strictes et n''autorisent en rien en Europe le mélange de vin rouge et blanc. Deux principes différents sont utilisés'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Pétillant','La vinification des vins effervescents (champagne, mousseux, crémant) a pour but de permettre d''embouteiller un vin dont les sucres et les levures vont déclencher une seconde fermentation en bouteilles. Celle-ci et son bouchon doivent pouvoir résister au gaz carbonique qui se forme sous pression. C''est lui au débouchage qui provoquera la formation de mousse'))		
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Vin', 'Le vin est une boisson alcoolisée obtenue par la fermentation du raisin, fruit des vignes (dont Vitis vinifera). En Europe, selon la définition légale, le vin est le produit obtenu exclusivement par la fermentation alcoolique, totale ou partielle, de raisins frais, foulés ou non, ou de moûts de raisinsN 1. La transformation du raisin en vin est appelée la vinification. L''étude du vin est l''œnologie.'))
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
	INTO SPECIALISATION_DESCRIPTEUR VALUES('Champagne','Pétillant')

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
