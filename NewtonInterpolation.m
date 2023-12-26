function result = NewtonInterpolation(xa, ya, x)
     n = length(xa);
     d = ya;
     for i = 2:n
         for j = n:-1:i
            d(j) = (d(j) - d(j-1)) / (xa(j) - xa(j-i+1));
         end
     end
     n = length(d);
     result = d(n);
     for i = n-1:-1:1
        result = result * (x - xa(i)) + d(i);
     end
end