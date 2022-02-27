#!/usr/bin/python3

# Задание: найти количество элементов массива,
# у которых первая и предпоследняя цифры одинаковые.

def solve(arr: list):
    count = 0

    for i in arr:
        first = None
        cur = i

        # Обработка двухзначных чисел
        if 10 <= cur < 100:
            count += 1
            continue

        # Сразу делим на 10
        cur //= 10

        # Это означает, что это число состоит из одной цифры
        if cur == 0:
            continue

        # Сохраняем предпоследнюю цифру
        first = cur % 10
        
        while cur >= 10:
            cur //= 10

        # Сохраняем первую цифру
        second = cur % 10

        if first == second:
            count += 1

    return count


if __name__ == '__main__':
    arr = list(map(int, input().split()))
    print(solve(arr))
