def get_divisors(n) -> list[int]:
    """Get divisors of a given number."""
    divisors = []
    for i in range(1, n + 1):
        if n % i == 0:
            divisors.append(i)
    return divisors


def main():
    start, end = 143146, 143215
    for i in range(start, end + 1):
        divisors = get_divisors(i)
        if len(divisors) == 6:
            print(*divisors)


if __name__ == "__main__":
    main()
