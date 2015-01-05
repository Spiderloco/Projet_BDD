--DESCRIPTEUR
INSERT ALL 	
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre','Le cidre est une boisson alcoolisée titrant de 2 % à 8 % 1d''alcool obtenue à partir de la fermentation du jus de pomme.'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre doux','en dessous de 3°GL, on l''obtient encore assez sucré et au net goût de pomme'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre demi-sec', 'entre 3° et 5°, c’est le plus répandu en France qui accompagne viande et poisson'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Sidra natural', ' Il s''agit d''un cidre de fermentation spontanée qui utilise les levures sauvages présentes sur les fruits'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Pomme', ' Elle est comestible et a un goût sucré ou acidulé selon les variétés.'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre traditionnel', ' Il s''agit d''un cidre de fermentation spontanée qui utilise les levures sauvages présentes sur les fruits'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Levure sauvage', ' ensembles de levures qui se situent naturellement dans l''air'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Poire', '  boisson alcoolisée effervescente, similaire au cidre'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Poires', '  fruit du poirier'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Biere', '   boisson alcoolisée obtenue par fermentation de matières glucidiques végétales et d''eau'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Ale', '  bières de fermentation haute'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cervoise', '   bière faite avec de l''orge ou d''autres céréales '))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Eau de vie', '  un produit de la distillation d’un liquide faiblement alcoolisé '))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Dolo', '  bière traditionnelle brassée essentiellement par les populations de l''Afrique sub-sahélienne'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Lager', '   bières à fermentation basse'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Lambic', '   bière de fermentation spontanée'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Huangjiu', '  boisson alcoolisée chinoise'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Sake', '   boisson alcoolisée japonaise à base de riz'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Zythogala', '  boisson à base de bière mêlée à du lait '))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Riz', '  céréale de la famille des poacées'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Levure', '  champignon unicellulaire'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Lait', '  liquide biologique comestible'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Sorgho', ' une plante herbacée annuelle'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Ble', ' terme générique qui désigne plusieurs céréales'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Biere de mil', ' bière traditionnelle brassée essentiellement par les populations de l''Afrique sub-sahélienne'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bibine',''))
	NTO DESCRIPTEUR VALUES (Descripteur_T ('Chope',''))
	NTO DESCRIPTEUR VALUES (Descripteur_T ('Guinness',''))
	NTO DESCRIPTEUR VALUES (Descripteur_T ('Sarcophage',''))
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
	INTO SYNONYME  VALUES ('Cidre traditionnel','Sidra natural')
	INTO SYNONYME  VALUES ('Biere de mil','Dolo')
	INTO SYNONYME  VALUES ('Biere','Bibine')
	INTO SYNONYME  VALUES ('Biere','Chope')
	INTO SYNONYME  VALUES ('Biere','Guinness')
	INTO SYNONYME  VALUES ('Biere','Sarcophage')
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
