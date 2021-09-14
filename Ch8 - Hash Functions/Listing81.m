function Listing81
n=5;
x=input('Give a value X = ')
e_s=(0.3*13^(4-n))
e=100
ml(1)=1
it=1
while e>e_s
it=it+1
ml(it)=ml(it-1)+(x)^(it-1)+x^(2+(it-1))/factorial(2+(it-1))
e=abs((ml(it)-ml(it-1))/ml(it))
end

disp(['number of iterations= ',num2str(it)])
disp(['epsilon= ',num2str(e)])