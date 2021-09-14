function computingInverse = Listing4_3(w,moduloN)
    [d, x, y]               = gcd(w,moduloN);
    computingInverse        = mod(x,moduloN);
end