#!/usr/bin/python3

# Определить, верно ли, что в записи введенного
# числа есть две одинаковые цифры.

def solve(n: int) -> bool:
    digits = [0 for i in range(10)]
    while n > 0:
        digits[n % 10] += 1
        n //= 10
    for d in digits:
        if d >= 2:
            return True
    return False


def verbose(res: bool) -> str:
    return 'Да' if res else 'Нет'


if __name__ == "__main__":
    n = int(input())
    print(verbose(solve(n)))
