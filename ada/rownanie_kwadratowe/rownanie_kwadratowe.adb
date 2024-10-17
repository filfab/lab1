with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure rownanie_kwadratowe is
    a, b, c, delt, x1, x2 : Float;
begin
    Put("Podaj współczynnik a: ");
    Get(a);
    Put("Podaj współczynnik b: ");
    Get(b);
    Put("Podaj współczynnik c: ");
    Get(c);

    if a = 0.0 then
        if b = 0.0 then
            if c = 0.0 then
                Put_Line("Równanie tożsamościowe");
            else
                Put_Line("Równanie sprzeczne");
            end if;
        else
            x1 := -c / b;
            Put_Line("x = " & x1'Image);
        end if;

        return;
    end if;

    delt := b**2 - 4.0*a*c;

    if delt < 0.0 then
        Put_Line("Równanie nie ma rozwiązań w zbiorze liczb rzeczywistych");
    elsif delt > 0.0 then
        x1 := (-b - Sqrt(delt)) / (2.0*a); 
        x2 := (-b + Sqrt(delt)) / (2.0*a); 
        Put_Line("x1 = " & x1'Image & "; x2 = " & x2'Image);
    else
        x1 := -b / 2.0*a;
        Put_Line("x0 = " & x1'Image);
    end if;
end rownanie_kwadratowe;