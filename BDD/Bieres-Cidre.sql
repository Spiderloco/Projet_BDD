--DESCRIPTEUR
INSERT ALL 	
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre','Le cidre est une boisson alcoolisee titrant de 2 % a 8 % 1d''alcool obtenu a partir de la fermentation du jus de pomme.'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre doux','en dessous de 3°GL, on l''obtient encore assez sucre et au net gout de pomme'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre demi-sec', 'entre 3° et 5°, c’est le plus repandu en France qui accompagne viande et poisson'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Sidra natural', ' Il s''agit d''un cidre de fermentation spontanee qui utilise les levures sauvages presentes sur les fruits'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Pomme', ' Elle est comestible et a un gout sucre ou acidule selon les varietes.'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre traditionnel', ' Il s''agit d''un cidre de fermentation spontanee qui utilise les levures sauvages presentes sur les fruits'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Levure sauvage', ' ensembles de levures qui se situent naturellement dans l''air'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Poire', ' boisson alcoolisee effervescente, similaire au cidre'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Poires', ' fruit du poirier'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Biere', '  boisson alcoolisee obtenue par fermentation de matières glucidiques vegetales et d''eau'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Ale', '  bieres de fermentation haute'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cervoise', '  biere faite avec de l''orge ou d''autres cereales '))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Eau de vie', '  un produit de la distillation d’un liquide faiblement alcoolise '))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Dolo', '  biere traditionnelle brassee essentiellement par les populations de l''Afrique sub-sahelienne'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Lager', '   bieres a fermentation basse'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Lambic', '   biere de fermentation spontanee'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Huangjiu', '  boisson alcoolisee chinoise'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Sake', '   boisson alcoolisee japonaise a base de riz'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Zythogala', '  boisson a base de bière melee a du lait '))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Riz', '  cereale de la famille des poacees'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Levure', '  champignon unicellulaire'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Lait', '  liquide biologique comestible'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Sorgho', ' une plante herbacee annuelle'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Ble', ' terme generique qui designe plusieurs cereales'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Biere de mil', ' biere traditionnelle brassee essentiellement par les populations de l''Afrique sub-sahelienne'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bibine',''))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Chope',''))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Guinness',''))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Sarcophage',''))
SELECT * FROM dual;

--DESCRIPTEUR VEDETTE
INSERT ALL 
	INTO DESCRIPTEUR_VEDETTE VALUES ('Cidre')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Cidre doux')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Cidre demi-sec')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Cidre traditionnel')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Poire')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Eau de vie')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Dolo')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Lager')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Lambic')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Huangjiu')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Sake')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Zythogala')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Biere')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Ale')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Cervoise')
SELECT * FROM dual;


--CONCEPT
INSERT ALL 
	INTO CONCEPT VALUES ('Cidre')
	INTO CONCEPT VALUES ('Cidre doux')
	INTO CONCEPT VALUES ('Cidre demi-sec')
	INTO CONCEPT VALUES ('Cidre traditionnel')
	INTO CONCEPT VALUES ('Poire')
	INTO CONCEPT VALUES ('Eau de vie')
	INTO CONCEPT VALUES ('Dolo')
	INTO CONCEPT VALUES ('Lager')
	INTO CONCEPT VALUES ('Lambic')
	INTO CONCEPT VALUES ('Huangjiu')
	INTO CONCEPT VALUES ('Sake')
	INTO CONCEPT VALUES ('Zythogala')
	INTO CONCEPT VALUES ('Biere')
	INTO CONCEPT VALUES ('Ale')
	INTO CONCEPT VALUES ('Cervoise')
SELECT * FROM dual;


--SYNONYME Descripteur-Descripteur
INSERT ALL 
	INTO SYNONYME  VALUES ('Sidra natural','Cidre traditionnel')
	INTO SYNONYME  VALUES ('Biere de mil','Dolo')
	INTO SYNONYME  VALUES ('Bibine','Biere')
	INTO SYNONYME  VALUES ('Chope','Biere')
	INTO SYNONYME  VALUES ('Guinness','Biere')
	--INTO SYNONYME  VALUES ('Sarcophage','Biere')
SELECT * FROM dual;


--ASSOCIATION Descripteur-DescripteurVedette
INSERT ALL 
	INTO ASSOCIATION VALUES	('Pomme', 'Cidre')
	INTO ASSOCIATION VALUES ('Pomme', 'Cidre doux')
	INTO ASSOCIATION VALUES ('Pomme', 'Cidre demi-sec')
	INTO ASSOCIATION VALUES ('Pomme', 'Cidre traditionnel')
	INTO ASSOCIATION VALUES ('Levure sauvage', 'Cidre traditionnel')
	INTO ASSOCIATION VALUES ('Poires', 'Poire')
	INTO ASSOCIATION VALUES ('Poire', 'Eau de vie')
	INTO ASSOCIATION VALUES ('Lait', 'Zythogala')
	INTO ASSOCIATION VALUES ('Levure', 'Zythogala')
	INTO ASSOCIATION VALUES ('Ble', 'Zythogala')
	INTO ASSOCIATION VALUES ('Riz', 'Sake')
	INTO ASSOCIATION VALUES ('Levure', 'Sake')
	INTO ASSOCIATION VALUES ('Ble', 'Sake')
	INTO ASSOCIATION VALUES ('Ble', 'Huangjiu')
	INTO ASSOCIATION VALUES ('Levure', 'Huangjiu')
	INTO ASSOCIATION VALUES ('Levure', 'Lambic')
	INTO ASSOCIATION VALUES ('Ble', 'Lambic')
	INTO ASSOCIATION VALUES ('Ble', 'Lager')
	INTO ASSOCIATION VALUES ('Levure', 'Lager')
	INTO ASSOCIATION VALUES ('Levure', 'Dolo')
	INTO ASSOCIATION VALUES ('Ble', 'Dolo')
	INTO ASSOCIATION VALUES ('Sorgho', 'Dolo')
	INTO ASSOCIATION VALUES ('Ble', 'Cervoise')
	INTO ASSOCIATION VALUES ('Levure', 'Cervoise')
	INTO ASSOCIATION VALUES ('Levure', 'Ale')
	INTO ASSOCIATION VALUES ('Ble', 'Ale')
	INTO ASSOCIATION VALUES ('Ble', 'Biere')
	INTO ASSOCIATION VALUES ('Levure', 'Biere')
SELECT * FROM dual;


--SPECIALISATION_DESCRIPTEUR DescripteurVedette-Concept
--INSERT ALL 
--
--SELECT * FROM dual;	

--SPECIALISATION_CONCEPT Concept-Concept qui est spécialisé
INSERT ALL 
	INTO SPECIALISATION_CONCEPT VALUES('Cidre', 'Cidre doux')
	INTO SPECIALISATION_CONCEPT VALUES('Cidre', 'Cidre demi-sec')
	INTO SPECIALISATION_CONCEPT VALUES('Cidre', 'Cidre traditionnel')
	INTO SPECIALISATION_CONCEPT VALUES('Biere', 'Ale')
	INTO SPECIALISATION_CONCEPT VALUES('Biere', 'Cervoise')
	INTO SPECIALISATION_CONCEPT VALUES('Biere', 'Dolo')
	INTO SPECIALISATION_CONCEPT VALUES('Biere', 'Lager')
	INTO SPECIALISATION_CONCEPT VALUES('Biere', 'Lambic')
	INTO SPECIALISATION_CONCEPT VALUES('Biere', 'Huangjiu')
	INTO SPECIALISATION_CONCEPT VALUES('Biere', 'Sake')
	INTO SPECIALISATION_CONCEPT VALUES('Biere', 'Zythogala')
SELECT * FROM dual;
