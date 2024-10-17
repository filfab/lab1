with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure euklides is
    a, b, c : Integer;
begin
    Put("Podaj pierwszą liczbę: ");
    Get(a);
    Put("Podaj drugą liczbę: ");
    Get(b);

    if a = 0 and b = 0 then
        Put("Największy wspólny dzielnik z dwóch zer nie istnieje");
        return;
    end if;
    
    while b /= 0 loop
        c := a mod b;
        a := b;
        b := c;
    end loop;

    if a < 0 then
        a := -a;
    end if;
    Put_Line("Największy wspólny dzielnik to " & a'Image);
end euklides;
