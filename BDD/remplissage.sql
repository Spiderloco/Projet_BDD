--DESCRIPTEUR
INSERT ALL 
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Rouge','C est pas blanc a fortiori'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Blanc','C est pas Michel, ni Laurent'))	
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Red', 'It red'))	
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Vin', 'It red'))	
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Alcool', 'It red'))	
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre','Le cidre est une boisson alcoolisée titrant de 2 % à 8 % 1d''alcool obtenue à partir de la fermentation du jus de pomme.'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre doux','en dessous de 3°GL, on l''obtient encore assez sucré et au net goût de pomme'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre demi-sec', 'entre 3° et 5°, c’est le plus répandu en France qui accompagne viande et poisson'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Sidra natural', ' Il s''agit d''un cidre de fermentation spontanée qui utilise les levures sauvages présentes sur les fruits'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Pomme', ' Elle est comestible et a un goût sucré ou acidulé selon les variétés.'))
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
