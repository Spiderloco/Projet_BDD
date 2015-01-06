	---Global
INSERT ALL
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Alcool',',Un alcool, une boisson alcoolisee (ou boisson alcoolique) est une boisson (fermentee, maceree, distillee ou autre) contenant de l''alcool ethylique (ou ethanol). La consommation d''alcool presente de nombreux risques pour la sante. En consequence, la plupart des pays possedent une legislation reglementant la production, la vente et la consommation de ces boissons.'))
	INTO DESCRIPTEUR_VEDETTE VALUES ('Alcool')
	INTO CONCEPT VALUES ('Alcool')
SELECT * FROM dual;

-- Synonymes
INSERT ALL
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Ethanol',','))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Tord-boyaux',','))
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Pousse-au-crime',','))
SELECT * FROM dual;

--Vin
INSERT ALL
	INTO SPECIALISATION_CONCEPT VALUES('Vin', 'Alcool')
SELECT * FROM dual;

--Spiritueux
INSERT ALL
	INTO SPECIALISATION_CONCEPT VALUES('Spiritueux', 'Alcool')
SELECT * FROM dual;

--Bieres-Cidres
INSERT ALL
	INTO SPECIALISATION_CONCEPT VALUES('Biere', 'Alcool')
	INTO SPECIALISATION_CONCEPT VALUES('Cidre', 'Alcool')
SELECT * FROM dual;

INSERT ALL
	INTO SYNONYME VALUES ('Ethanol' , 'Alcool' )
	INTO SYNONYME VALUES ('Tord-boyaux' , 'Alcool' )
	INTO SYNONYME VALUES ('Pousse-au-crime' , 'Alcool' )
SELECT * FROM dual;
