	---Global
INSERT ALL
	INTO DESCRIPTEUR VALUES (Descripteur_T ('Alcool','C''est très souvent alcolisée. Julien s''est toujours bourré la gueule, donc à prendre avec modération !'))
	INTO DESCRIPTEUR_VEDETTE VALUES ('Alcool')
	INTO CONCEPT VALUES ('Alcool')
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
