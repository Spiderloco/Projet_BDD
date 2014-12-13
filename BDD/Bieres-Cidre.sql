--DESCRIPTEUR
INSERT ALL 	
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre','Le cidre est une boisson alcoolisée titrant de 2 % à 8 % 1d''alcool obtenue à partir de la fermentation du jus de pomme.'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre doux','en dessous de 3°GL, on l''obtient encore assez sucré et au net goût de pomme'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre demi-sec', 'entre 3° et 5°, c’est le plus répandu en France qui accompagne viande et poisson'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Sidra natural', ' Il s''agit d''un cidre de fermentation spontanée qui utilise les levures sauvages présentes sur les fruits'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Pomme', ' Elle est comestible et a un goût sucré ou acidulé selon les variétés.'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cidre traditionnel', ' Il s''agit d''un cidre de fermentation spontanée qui utilise les levures sauvages présentes sur les fruits'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Levure sauvage', ' ensembles de levures qui se situent naturellement dans l''air'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Poiré', '  boisson alcoolisée effervescente, similaire au cidre'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Poire', '  fruit du poirier'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bières', '   boisson alcoolisée obtenue par fermentation de matières glucidiques végétales et d''eau'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Ale', '  bières de fermentation haute'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Cervoise', '   bière faite avec de l''orge ou d''autres céréales '))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Eau de vie', '  un produit de la distillation d’un liquide faiblement alcoolisé '))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Dolo', '  bière traditionnelle brassée essentiellement par les populations de l''Afrique sub-sahélienne'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Lager', '   bières à fermentation basse'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Lambic', '   bière de fermentation spontanée'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Huangjiu', '  boisson alcoolisée chinoise'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Saké', '   boisson alcoolisée japonaise à base de riz'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Zythogala', '  boisson à base de bière mêlée à du lait '))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Riz', '  céréale de la famille des poacées'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Levure', '  champignon unicellulaire'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Lait', '  liquide biologique comestible'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Sorgho', ' une plante herbacée annuelle'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Blé', ' terme générique qui désigne plusieurs céréales'))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Bière de mil', ' bière traditionnelle brassée essentiellement par les populations de l''Afrique sub-sahélienne'))
SELECT * FROM dual;

--DESCRIPTEUR VEDETTE
INSERT ALL 
	INTO DESCRIPTEUR_VEDETTE VALUES ('Cidre')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Cidre doux')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Cidre demi-sec')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Cidre traditionnel')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Poiré')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Eau de vie')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Dolo')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Lager')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Lambic')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Huangjiu')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Saké')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Zythogala')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Bières')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Ale')
	INTO DESCRIPTEUR_VEDETTE VALUES ('Cervoise')
SELECT * FROM dual;


--CONCEPT
INSERT ALL 
	INTO CONCEPT VALUES ('Cidre')
	INTO CONCEPT VALUES ('Cidre doux')
	INTO CONCEPT VALUES ('Cidre demi-sec')
	INTO CONCEPT VALUES ('Cidre traditionnel')
	INTO CONCEPT VALUES ('Poiré')
	INTO CONCEPT VALUES ('Eau de vie')
	INTO CONCEPT VALUES ('Dolo')
	INTO CONCEPT VALUES ('Lager')
	INTO CONCEPT VALUES ('Lambic')
	INTO CONCEPT VALUES ('Huangjiu')
	INTO CONCEPT VALUES ('Saké')
	INTO CONCEPT VALUES ('Zythogala')
	INTO CONCEPT VALUES ('Bières')
	INTO CONCEPT VALUES ('Ale')
	INTO CONCEPT VALUES ('Cervoise')
SELECT * FROM dual;


--SYNONYME Descripteur-Descripteur
INSERT ALL 
	INTO SYNONYME  VALUES ('Cidre traditionnel','Sidra natural')
	INTO SYNONYME  VALUES ('Bière de mil','Dolo')
SELECT * FROM dual;


--ASSOCIATION Descripteur-DescripteurVedette
INSERT ALL 
	INTO ASSOCIATION VALUES	('Pomme', 'Cidre')
	INTO ASSOCIATION VALUES	('Pomme', 'Cidre doux')
	INTO ASSOCIATION VALUES	('Pomme', 'Cidre demi-sec')
	INTO ASSOCIATION VALUES	('Pomme', 'Cidre traditionnel')
	INTO ASSOCIATION VALUES	('Levure sauvage', 'Cidre traditionnel')
	INTO ASSOCIATION VALUES	('Poire', 'Poiré')
	INTO ASSOCIATION VALUES	('Poiré', 'Eau de vie')
	INTO ASSOCIATION VALUES	('Lait', 'Zythogala')
	INTO ASSOCIATION VALUES	('Levure', 'Zythogala')
	INTO ASSOCIATION VALUES	('Blé', 'Zythogala')
	INTO ASSOCIATION VALUES	('Riz', 'Saké')
	INTO ASSOCIATION VALUES	('Levure', 'Saké')
	INTO ASSOCIATION VALUES	('Blé', 'Saké')
	INTO ASSOCIATION VALUES	('Blé', 'Huangjiu')
	INTO ASSOCIATION VALUES	('Levure', 'Huangjiu')
	INTO ASSOCIATION VALUES	('Levure', 'Lambic')
	INTO ASSOCIATION VALUES	('Blé', 'Lambic')
	INTO ASSOCIATION VALUES	('Blé', 'Lager')
	INTO ASSOCIATION VALUES	('Levure', 'Lager')
	INTO ASSOCIATION VALUES	('Levure', 'Dolo')
	INTO ASSOCIATION VALUES	('Blé', 'Dolo')
	INTO ASSOCIATION VALUES	('Sorgho ', 'Dolo')
	INTO ASSOCIATION VALUES	('Blé', 'Cervoise')
	INTO ASSOCIATION VALUES	('Levure', 'Cervoise')
	INTO ASSOCIATION VALUES	('Levure', 'Ale')
	INTO ASSOCIATION VALUES	('Blé', 'Ale')
	INTO ASSOCIATION VALUES	('Blé', 'Bières')
	INTO ASSOCIATION VALUES	('Levure', 'Bières')
SELECT * FROM dual;


--SPECIALISATION_DESCRIPTEUR DescripteurVedette-Concept
INSERT ALL 
	INTO SPECIALISATION_DESCRIPTEUR VALUES	('Vin', 'Alcool')
SELECT * FROM dual;	

--SPECIALISATION_CONCEPT Concept-Concept qui est spécialisé
INSERT ALL 
	INTO SPECIALISATION_CONCEPT VALUES('Cidre', 'Cidre doux')
	INTO SPECIALISATION_CONCEPT VALUES('Cidre', 'Cidre demi-sec')
	INTO SPECIALISATION_CONCEPT VALUES('Cidre', 'Cidre traditionnel')
	INTO SPECIALISATION_CONCEPT VALUES('Bières', 'Ale')
	INTO SPECIALISATION_CONCEPT VALUES('Bières', 'Cervoise')
	INTO SPECIALISATION_CONCEPT VALUES('Bières', 'Dolo')
	INTO SPECIALISATION_CONCEPT VALUES('Bières', 'Lager')
	INTO SPECIALISATION_CONCEPT VALUES('Bières', 'Lambic')
	INTO SPECIALISATION_CONCEPT VALUES('Bières', 'Huangjiu')
	INTO SPECIALISATION_CONCEPT VALUES('Bières', 'Saké')
	INTO SPECIALISATION_CONCEPT VALUES('Bières', 'Zythogala')
SELECT * FROM dual;
