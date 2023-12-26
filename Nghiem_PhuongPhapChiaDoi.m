function [root, iteration] = Nghiem_PhuongPhapChiaDoi(f, a, b, epsilon)
    iteration = 0;
    while (b - a) > epsilon
        c = (a + b)/2;
        if f(c) == 0
            break;
        end
    %Nếu f(c) > 0 --> sign(f(c)) == 1 || f(c) < 0 --> sign(f(c)) == -1
        if sign(f(c)) == sign(f(a))
            a = c;
        else
            b = c;
        end
        iteration = iteration + 1;
    end
    root = (a + b)/2;
end