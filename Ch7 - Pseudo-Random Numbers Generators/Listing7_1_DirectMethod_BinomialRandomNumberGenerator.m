% see [21] for this sample
function BinomialRandomValue = Listing7_1_DirectMethod_BinomialRandomNumberGenerator(throws,probability,a,b)
    % throws - represents the number of throws or tosses
    % probability - represents the probability value on a single throw
    % a and b - values entered by user, check Listing 7-2 for the example
    BinomialRandomValue = zeros(a,b);
    for k = 1:a*b
        random_value = rand(throws,1);
        BinomialRandomValue(k) = sum(random_value < probability);
    end
    BinomialRandomValue
end