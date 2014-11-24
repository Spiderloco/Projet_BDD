insert into DESCRIPTEUR values (Descripteur_T('Rouge'));

insert into DESCRIPTEURVEDETTE values (DescripteurVedette_T(Descripteur_T('Vin')));

insert into CONCEPT values (Concept_T('Alcool', DescripteurVedette_T(Descripteur_T('Alcool'))));

