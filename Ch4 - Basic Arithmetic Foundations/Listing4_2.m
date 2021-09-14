 xbest = [0,0,0,0,0,0,0]
 fmin = fun(xbest);
 for i1 = 0:20
    for i2 = 0:20
       for i7 = 1:20
          x = [i1,i2,i3,i4,i5,i6,i7]
          f = fun(x)
          if f < fmin
            xbest = x
            fmin = f
          end
       end
    end
 end