function [dx] = tinhdaohamtumang2(mangX,mangY,a,h,pp)
    [c] = find(mangX == a);
    if pp == "Xấp xỉ tiến"
        if c == length(mangX) 
            msgbox("Error");
            dx = 0;
        else
        dx = (mangY(c+1) - mangY(c))/h;
        end
    elseif pp == "Xấp xỉ lùi"
        if c == 1
            msgbox("Chọn giá trị cần tính đạo hàm từ thứ 2 trở đi trong mảng X");
            dx = 0;
        else
        dx = (mangY(c) - mangY(c-1))/h;
        end
    else
        dx =0;
    end
end
