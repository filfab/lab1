#include <stdio.h>

int main() {
    int n, p, n_copy, n_reverse = 0;

    printf("Podaj liczbe n: ");
    scanf("%d", &n);
    printf("Podaj podstawę p: ");
    scanf("%d", &p);
   
    if (n < 0) {
        printf("Niepoprawne dane (liczba n jest ujemna)\n");
        return 0;
    }
    if (p <= 1) {
        printf("Niepoprawne dane (podstawa pjest mniejsza od 1)\n");
        return 0;
    }

    n_copy = n;

    while (n > 0) {
        n_reverse = n_reverse * p + n % p;
        n /= p;
    }

    printf((n_copy == n_reverse) ? "Palindrom\n" : "Nie jest palindromem\n");

    return 0;
}