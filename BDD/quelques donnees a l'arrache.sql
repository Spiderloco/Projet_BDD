;; Liste des spiritueux
INSERT INTO Descripteur (Libelle)
 VALUES
    ('Anisette');
    --('Amers'),
    ('Amaretto'),
    ('Aquavit'),
    --('Absinthe'),
    ('Arak'),
    ('Armagnac', 'L''armagnac est une eau-de-vie de vin produite dans les départements français du Gers, des Landes et du Lot-et-Garonne'),
    ('Bénédictine'),
    ('Brandy'),
    ('Calvados'),
    ('Chartreuse'),
    ('Cognac'),
    ('Curaçao'),
    ('Floc de Gascogne'),
    ('Gin', 'Le gin est une boisson obtenue en aromatisant de l''alcool rectifié d''origine agricole avec des baies de genévrier.'),
    ('Grappa'),

    ('Kirsch', 'Le kirsch est une eau-de-vie obtenue par double distillation de jus fermentés de cerises'),

    ('Liqueurs', 'Une liqueur est une boisson spiritueuse ayant une teneur en sucre minimale de 100 grammes par litre, obtenue par aromatisation de l''alcool éthylique d''origine agricole ou d''un distillat d''origine agricole.'),

    ('Mei kwei lu chew'),
    ('Ouzo'),
    ('Pastis'),
    ('Pineau des Charentes'),
    ('Pontarlier'),
    ('Rakı'),

    ('Rhum' , 'Le rhum est une eau-de-vie originaire des Amériques, produite à partir de la canne à sucre ou de sous-produits de l''industrie sucrière. Il est consommé blanc, vieilli en fût (rhum vieux) ou épicé. Il prend alors une coloration ambrée plus ou moins foncée. En fonction de la matière première utilisée, il peut être appelé agricole ou industriel.'),

    ('Sambuca'),
    ('Tequila', 'Le ou la tequila, est une boisson alcoolisée produite au Mexique à partir d''une plante nommée Agave tequilana.'),
    ('Sodabi'),
    ('Vins cuits'),
    ('Vodka', 'La vodka est une boisson alcoolisée incolore de 40 degrés. L''origine de cette eau-de-vie se situerait en Russie ou en Pologne selon les sources. Il s''agit généralement d''une eau-de-vie de pomme de terre ou de céréales, mais d''autres matières premières peuvent être utilisées.'),
    ('Whisky');

INSERT INTO Descripteur (Libelle)
 VALUES
    ('Vin Rouge'),
    ('Vin Blanc'),
    ('Vin Rose'),
    ('Vin Speciales');

INSERT INTO SpecialisationC (ConceptSpecialise, ConceptSpecialisant)
 VALUES
    ('Spiritueux', 'Anisette'),
    ('Spiritueux', 'Amaretto'),
    ('Spiritueux', 'Aquavit'),
    ('Spiritueux', 'Arak'),
    ('Spiritueux', 'Armagnac'),
    ('Spiritueux', 'Bénédictine'),
    ('Spiritueux', 'Brandy'),
    ('Spiritueux', 'Calvados'),
    ('Spiritueux', 'Chartreuse'),
    ('Spiritueux', 'Cognac'),
    ('Spiritueux', 'Curaçao'),
    ('Spiritueux', 'Floc de Gascogne'),
    ('Spiritueux', 'Gin'),
    ('Spiritueux', 'Grappa'),
    ('Spiritueux', 'Kirsch'),
    ('Spiritueux', 'Liqueurs'),
    ('Spiritueux', 'Mei kwei lu chew'),
    ('Spiritueux', 'Ouzo'),
    ('Spiritueux', 'Pastis'),
    ('Spiritueux', 'Pineau des Charentes'),
    ('Spiritueux', 'Pontarlier'),
    ('Spiritueux', 'Rakı'),
    ('Spiritueux', 'Rhum'),
    ('Spiritueux', 'Sambuca'),
    ('Spiritueux', 'Tequila'),
    ('Spiritueux', 'Sodabi'),
    ('Spiritueux', 'Vins cuits'),
    ('Spiritueux', 'Vodka'),
    ('Spiritueux', 'Whisky');

INSERT INTO SpecialisationC (ConceptSpecialise, ConceptSpecialisant)
 VALUES
    ('Vin', 'Vin Rouge'),
    ('Vin', 'Vin Blanc'),
    ('Vin', 'Vin Rose'),
    ('Vin', 'Vin Speciales');

-- liste des Liqueurs
INSERT INTO Descripteur (Libelle)
 VALUES
('Absinthe'),
('Amaretto'),
('Amaro'),
('Angélique'),
('Anisette'),
('Bénédictine'),
('Amer (bitter)'),
('Chartreuse'),
('China (liqueur)'),
('Cointreau'),
('Curaçao (liqueur)'),
('Drambuie'),
('Génépi'),
('Liqueur de genièvre'),
('Liqueur de gentiane'),
('Gold Strike'),
('Grand Marnier'),
('Guignolet'),
('Izarra'),
('Jägermeister'),
('Kahlua'),
('Kummel'),
('Licor 43'),
('Liqueur de myrte'),
('Millz Premium'),
('Noyau de Poissy'),
('Liqueur de sapin'),
('Parfait amour'),
('Persico'),
('Liqueur de Poejo'),
('Rhubarbe Zucca'),
('Suze'),
('Thibarine'),
('Triple sec'),
('Vermouth'),
('Verveine'),
('Vespetrò');

-- liste des Amers
INSERT INTO Descripteur (Libelle)
 VALUES
    ('Abbot''s Aged Bitters (Baltimore États-Unis)'),
    ('Amaro Lucano (Italie)'),
    ('Angostura (Venezuela)'),
    ('Campari et Fernet Branca (Italie)'),
    ('China Martini, China Stemmi (Italie, à base de cinchona)'),
    ('Cynar (Italie, à base d''artichaut)'),
    ('Gran Classico (Suisse)'),
    ('Jägermeister (Allemagne)'),
    ('Orange bitters (Angleterre)'),
    ('Picon (est et nord de la France)'),
    ('Sommer (Alsace)'),
    ('Suze (apéritif de gentiane français) et ses homologues : Avèze, Salers...'),
    ('Unicum (Hongrie)'),
    ('Buff (Luxembourg)'),
    ('Gancia Americano (Italie)');

-- Liste des Gin
INSERT INTO Descripteur (Libelle)
 VALUES
('Genever (Gin hollandais)'),
('London Dry Gin (Gin anglais)');
;;Quelques variantes de gin

;;-Old tom Gin : gin légèrement sucré ;

;;-Yellow gin : gin vieilli en fûts de chêne ayant contenue du Xérès ;

;;-Cork Gin : gin irlandais




