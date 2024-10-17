def main():
    n = int(input('Podaj liczbę n: '))
    p = int(input('Podaj podstawę p: '))

    if n < 0:
        print('Niepoprawne dane (liczba n jest ujemna)')
        return
    if p <= 1:
        print('Niepoprawne dane (podstawa p mniejsza od 1)')
        return

    n_copy = n
    n_reverse = 0
    
    while n > 0:
        n_reverse = n_reverse * p + n % p
        n //= p

    print('Palindrom' if n_copy == n_reverse else 'Nie jest palindromem')


if __name__ == '__main__':
    main()