function [dx] = tinhdaohamtumang(mangX,mangY,a,h,pp)
    [c] = find(mangX == a);
    if pp == "Xấp xỉ tiến"
        if c>(length(mangX) - 2)
            msgbox("Error");
            dx = 0;
        else
        dx = (4*mangY(c+1) - 3*mangY(c) - mangY(c+2))/(2*h);
        end
    elseif pp == "Xấp xỉ trung tâm"
        dx = (mangY(c+1)-mangY(c-1))/(2*h);
    else
        if c <= 2
            msgbox("Chọn giá trị cần tính đạo hàm từ thứ 3 trở đi trong mảng X");
            dx = 0;
        else
        dx = (3*mangY(c) - 4*mangY(c-1) + mangY(c-2))/(2*h);
        end
    end
end