function L = NewtonSymbolic(xa, ya)
     syms x;
     n = length(xa);
     L = ya(n);
     for i = n-1:-1:1
        L = L * (x - xa(i)) + ya(i);
     end
     L = simplify(L);
end