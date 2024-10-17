with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure palindrom is
    n, p, n_copy, n_reverse : Integer;
begin
    Put("Podaj liczbe n: ");
    Get(n);
    Put("Podaj podstawę p: ");
    Get(p);

    if n < 0 then
        Put_Line("Błędne dane (liczba n jest ujemna)");
        return;
    end if;
    if p <= 1 then
        Put_Line("Błedne dane (podstawa p jest mniejsza od 1)");
        return;
    end if;

    n_copy := n;
    n_reverse := 0;

    while n > 0 loop
        n_reverse := n_reverse * p + n mod p;
        n := n / p;
    end loop;

    if n_copy = n_reverse then
        Put_Line("Palindrom");
    else
        Put_Line("Nie jest palindromem");
    end if;
end palindrom;