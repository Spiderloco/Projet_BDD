--insert into DESCRIPTEUR values (Descripteur_T('Rouge'));

INSERT INTO DESCRIPTEUR VALUES (
   Descripteur_T ('Rouge'));


--insert into Concept values (Concept_T('Alcool'));

--insert into CONCEPT values (Concept_T('Alcool', DescripteurVedette_T(Descripteur_T('Alcool'))));

insert into DESCRIPTEURVEDETTE values (DescripteurVedette_T(Descripteur_T('Vin')), Concept_T('Alcool'));

--insert into DESCRIPTEUR values (Descripteur_T('Vin'));

--INSERT INTO DESCRIPTEURVEDETTE
--if(SELECT DESCRIPTEURVEDETTE_T (REF(d))
 --   FROM DESCRIPTEUR d
  --  WHERE d.libelle = 'Vin')
 
  --SELECT DESCRIPTEURVEDETTE_T (REF(d))
   -- FROM DESCRIPTEUR d
   -- WHERE d.libelle = 'Vin';


