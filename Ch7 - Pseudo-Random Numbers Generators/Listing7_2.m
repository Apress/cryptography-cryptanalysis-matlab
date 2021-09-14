% see [21] for this sample
rng('default')
binomial_random_value = Listing7_1_DirectMethod_BinomialRandomNumberGenerator(325,0.2,1e3,1);
histogram(binomial_random_value,101)