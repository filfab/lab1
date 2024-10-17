import math

def main():
    a = float(input('Podaj współczynnik a: '))
    b = float(input('Podaj współczynnik b: '))
    c = float(input('Podaj współczynnik c: '))

    if a == 0:
        match b, c:
            case 0, 0:
                print('Równanie tożsamościowe')
            case 0, _:
                print('Równanie sprzeczne')
            case _:
                print(f'x = {-c / b}')
        return
    
    delta = b**2 - 4*a*c

    if delta < 0:
        print('Nie istnieje rozwiązanie w zbiorze liczb rzeczywistych')
    elif delta > 0:
        x1 = (-b - math.sqrt(delta)) / (2 * a)
        x2 = (-b + math.sqrt(delta)) / (2 * a)
        print(f'x1 = {x1}; x2 = {x2}')
    else:
        x0 = -b / (2 * a)
        print(f'x = {x0}')


if __name__ == '__main__':
    main()