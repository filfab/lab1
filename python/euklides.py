def main():
    a = int(input('Podaj pierwszą liczbę: '))
    b = int(input('Podaj drugą liczbę: '))

    if a == 0 and b == 0:
        print('Największy wspólny dzielnik dla dwóch zer nie istnieje')
        return

    while b != 0 :
        c = a % b
        a, b = b, c

    print(f'Największy wspólny dzielnik to { abs(a) }')


if __name__ == '__main__':
    main()