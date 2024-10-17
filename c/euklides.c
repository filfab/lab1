#include <stdio.h>

int main() {
    int a, b, c;

    printf("Podaj pierwszą liczbę: ");
    scanf("%d", &a);
    printf("Podaj drugą liczbę: ");
    scanf("%d", &b);

    if (a == 0 && b == 0) {
        printf("Największy wspólny dzielnik z dwóch zer nie istnieje\n");
        return 0;
    }

    while (b != 0) {
        c = a % b;
        a = b;
        b = c;
    }

    if (a < 0) { a = -a; }
    printf("Największy wspólny dzielnik to %d\n", a);

    return 0;
}