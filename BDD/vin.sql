--DESCRIPTEUR
INSERT ALL 
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Chateau Lafite-Rothschild','Pauillac'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Chateau Latour','Pauillac'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Chateau Margaux','Margaux')) 
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Chateau Mouton-Rothschild','Pauillac'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Chateau Haut-Brion','Pessac'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bordeaux','Vin de Bordeaux'))
	--
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Vignoble de Chablis','Vignoble de Chablis'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Vignoble de la côte de Nuits','Vignoble de la côte de Nuits'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bourgogne','Vin de Bourgogne'))
	--
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Huitieme','9,4 cl (inusite)'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Quart','18,75 ou 20 cl (utilise par les compagnies aeriennes et parfois dans les boîtes de nuit)'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Demie','37,5 cl (vendue en restaurant)'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Medium','60 cl (inusite)'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bouteille','75 cl (la plus vendue)'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Magnum','1,5 l soit deux bouteilles. L''experience montre que le vin de Champagne se conserve le mieux dans un magnum, il y vieillit plus lentement, assurant au nectar une excellente longevite. Un magnum de champagne deçoit rarement et il est recommande au-dela de quatre convives ; a l''oppose, le champagne en demie — et a fortiori en quart — ne beneficie pas des meilleures conditions de vieillissement.'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Jeroboam','3 l soit quatre bouteilles, est le plus demande des grands flacons.'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Champagne','CHAMPAGNE!!'))
	--VEDETTE
	--VIN
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Rouge','La vinification en rouge consiste a faire un pressurage apres que la fermentation a commence. Pendant toute cette phase, le moût est en contact avec les matieres solides de la vendange. Celles-ci sont tres riches en tanins, matieres colorantes, odorantes, minerales et azotees. Ces substances vont alors se dissoudre plus ou moins dans le moût et se retrouver dans le vin'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Blanc','Dans la vinification en blanc la fermentation se deroule en dehors de tout contact avec les parties solides de la vendange (pepins, peaux du raisin, rafles). Ce qui explique que l''on peut faire indifferemment du blanc a partir de cepages blancs et rouges. C''est le cas du Champagne. Le but de cette vinification est de faire ressortir le maximum des arômes contenus d''abord dans le raisin, ensuite en cours de fermentation, enfin lors du vieillisement'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Rose','La vinification en rose se produit par maceration, limitee dans le temps, de cepages a pellicule noire avec possible ajout de cepages blancs. Le vin rose n''a pas de definition legale. Mais ses techniques de vinification sont tres strictes et n''autorisent en rien en Europe le melange de vin rouge et blanc. Deux principes differents sont utilises'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Petillant','La vinification des vins effervescents (champagne, mousseux, cremant) a pour but de permettre d''embouteiller un vin dont les sucres et les levures vont declencher une seconde fermentation en bouteilles. Celle-ci et son bouchon doivent pouvoir resister au gaz carbonique qui se forme sous pression. C''est lui au debouchage qui provoquera la formation de mousse'))		
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Vin', 'Le vin est une boisson alcoolisee obtenue par la fermentation du raisin, fruit des vignes (dont Vitis vinifera). En Europe, selon la definition legale, le vin est le produit obtenu exclusivement par la fermentation alcoolique, totale ou partielle, de raisins frais, foules ou non, ou de moûts de raisinsN 1. La transformation du raisin en vin est appelee la vinification. L''etude du vin est l''oenologie.'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Raisin','Le raisin est le fruit de la Vigne.'))
	-- synonymes vin
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Vinasse',''))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Picolo',''))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Pivois',''))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Pinard',''))
SELECT * FROM dual;

--DESCRIPTEUR VEDETTE
INSERT ALL 
	INTO DESCRIPTEUR_VEDETTE VALUES ('Bourgogne')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Bordeaux')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Champagne')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Rouge')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Blanc')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Rose')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Petillant')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Vin')
SELECT * FROM dual;


--CONCEPT
INSERT ALL 
	INTO CONCEPT VALUES ('Bourgogne')
	INTO CONCEPT VALUES ('Bordeaux')
	INTO CONCEPT VALUES ('Champagne')
	INTO CONCEPT VALUES ('Rouge')
	INTO CONCEPT VALUES ('Blanc')
	INTO CONCEPT VALUES ('Rose')
	INTO CONCEPT VALUES ('Petillant')
	INTO CONCEPT VALUES ('Vin')
SELECT * FROM dual;


--SYNONYME Descripteur-Descripteur
INSERT ALL 

INSERT ALL
	INTO SYNONYME VALUES ('Pinard' , 'Vin' )
	INTO SYNONYME VALUES ('Vinasse' , 'Vin' )
	INTO SYNONYME VALUES ('Picolo' , 'Vin' )
	INTO SYNONYME VALUES ('Pivois' , 'Vin' )
SELECT * FROM dual;


--ASSOCIATION Descripteur-DescripteurVedette
INSERT ALL 
	INTO ASSOCIATION VALUES ('Chateau Lafite-Rothschild','Bordeaux')
	INTO ASSOCIATION VALUES ('Chateau Latour','Bordeaux')
	INTO ASSOCIATION VALUES ('Chateau Margaux','Bordeaux')
	INTO ASSOCIATION VALUES ('Chateau Mouton-Rothschild','Bordeaux')
	INTO ASSOCIATION VALUES ('Chateau Haut-Brion','Bordeaux')
	--
	INTO ASSOCIATION VALUES ('Vignoble de Chablis','Bourgogne')
	INTO ASSOCIATION VALUES ('Vignoble de la côte de Nuits','Bourgogne')
	--
	INTO ASSOCIATION VALUES ('Huitieme','Champagne')
	INTO ASSOCIATION VALUES ('Quart','Champagne')
	INTO ASSOCIATION VALUES ('Demie','Champagne')
	INTO ASSOCIATION VALUES ('Medium','Champagne')
	INTO ASSOCIATION VALUES ('Bouteille','Champagne')
	INTO ASSOCIATION VALUES ('Magnum','Champagne')
	INTO ASSOCIATION VALUES ('Jeroboam','Champagne')
	INTO ASSOCIATION VALUES ('Raisin','Vin')
SELECT * FROM dual;


--SPECIALISATION_DESCRIPTEUR DescripteurVedette-Concept
INSERT ALL 
	INTO SPECIALISATION_DESCRIPTEUR VALUES('Champagne','Petillant')

SELECT * FROM dual;	

--SPECIALISATION_CONCEPT Concept-Concept qui est specialise
INSERT ALL 
	INTO SPECIALISATION_CONCEPT VALUES('Bourgogne', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Bordeaux', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Champagne', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Rouge', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Blanc', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Rose', 'Vin')
	INTO SPECIALISATION_CONCEPT VALUES('Petillant', 'Vin')
SELECT * FROM dual;
