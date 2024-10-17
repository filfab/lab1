#include <stdio.h>
#include <math.h>

float a, b, c, delta, x1, x2;

int main() {
	printf("Podaj współczynnik a: ");
	scanf("%f", &a);
	printf("Podaj współczynnik b: ");
	scanf("%f", &b);
	printf("Podaj współczynnik c: ");
	scanf("%f", &c);

	if (a == 0) {
		if (b == 0) {
			if (c == 0) {
				printf("Równanie tożsamościowe\n");
			}
			else {
				printf("Równanie sprzeczne\n");
			}
		} else {
			x1 = -c / b;
			printf("x = %f\n", x1);
		}

		return 0;
	}

	delta = pow(b, 2.0) - 4*a*c;

	if (delta < 0) {
		printf("Równanie nie ma rozwiązań w zbiorze liczb rzeczywistych\n");
	} else if (delta > 0.0) {
		x1 = (-b - sqrt(delta)) / (2 * a);
		x2 = (-b + sqrt(delta)) / (2 * a);
		printf("x1 = %f; x2 = %f\n", x1, x2);
	} else {
		x1 = -b / 2*a;
		printf("x0 = %f\n", x1);
	}

	return 0;
}
