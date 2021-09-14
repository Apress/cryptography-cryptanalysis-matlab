%see [21] for a detailed version

rng('default')
unit = 1;
output = expinv(rand(1e4,1),unit);
Y = output;

numbins = 150;
theHistogram = histogram(Y,numbins,'Normalization','pdf');
hold on
    a = linspace(theHistogram.BinEdges(1),theHistogram.BinEdges(end));
    b = exppdf(a,unit);
    plot(a,b,'LineWidth',1)
hold off