from time import perf_counter

start, end = 5408238, 5408389


# def prime_check(n):
#     """Check if a number is prime."""
#     if n == 1:
#         return False
#     for i in range(2, n):
#         if n % i == 0:
#             return False
#     return True


def erathostenes(n):
    """Erathostenes sieve."""
    sieve = [True] * (n + 1)
    for i in range(2, int(n ** 0.5) + 1):
        if sieve[i]:
            for j in range(i ** 2, n + 1, i):
                sieve[j] = False
    return sieve


# def main1():
#     index = 1
#     for i in range(start, end + 1):
#         if prime_check(i):
#             print(f"{index})", i)
#         index += 1


def main2():
    seive = erathostenes(end)
    index = 1
    for i in range(start, end + 1):
        if seive[i]:
            print(f"{index})", i)
        index += 1


if __name__ == "__main__":
    # start_time = perf_counter()
    # main1()
    # end_time = perf_counter()
    # print(f"Time: {end_time - start_time}")
    # start_time = perf_counter()
    main2()
    # end_time = perf_counter()
    # print(f"Time: {end_time - start_time}")
