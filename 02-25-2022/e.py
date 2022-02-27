#!/usr/bin/python3

# Определить, верно ли, что в записи введенного
# числа есть две одинаковые цифры.

def solve1(n: int) -> bool:
    digits = [0 for i in range(10)]
    while n > 0:
        digits[n % 10] += 1
        n //= 10
    # Длинная запись
    # for d in digits:
    #     if d >= 2:
    #         return True
    # return False

    # Короткая запись
    return any(i >= 2 for i in digits)


def solve2(n: int) -> bool:
    from collections import Counter
    return len(list(filter(lambda x: x[1] >= 2, Counter(str(n)).items()))) > 0


def verbose(res: bool) -> str:
    return 'Да' if res else 'Нет'


if __name__ == "__main__":
    n = int(input())
    print(verbose(solve1(n)))
    # print(verbose(solve2(n)))
