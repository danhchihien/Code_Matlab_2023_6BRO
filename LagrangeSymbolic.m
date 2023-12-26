function L = LagrangeSymbolic(xa, ya)
     syms x;
     n = length(xa);
     L = 0;
     for i = 1:n
         P = 1;
         for j = 1:n
             if i ~= j
                P = P * (x - xa(j)) / (xa(i) - xa(j));
             end
         end
         L = L + P * ya(i);
     end
     L = simplify(L);
end