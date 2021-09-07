% Criando antena

ant = yagiUda('NumDirectors',1);

% definindo o Exciter

d = dipoleFolded;

d.Length = 0.224; % ~ 8,82 inches
d.Width = 0.011;
d.Spacing = d.Length/60;

ant.Exciter = d;

% comprimentos

ant.ReflectorLength = 0.3048; % Refletor (base) 12 polegadas

ant.DirectorLength = 0.193; % direcionador ~ 7.6 polegadas (de cima)

% espaçamentos

ant.DirectorSpacing = 0.171; % 6,75 polegadas

ant.ReflectorSpacing = 0.114; % 4,5 polegadas

% figuras

% estrutura

figure; show(ant);

% padrão de radiação eletromag.

figure; pattern(ant,433e6);

% mesmo padrão mas em visão de azimuth

figure; patternElevation(ant,433e6);

% impedância e reatância por frequência

figure; impedance(ant,400e6:5e6:500e6,1);

