#!/usr/bin/python3

# Задание:
# Найти два минимальных элемента в массиве.

def solve1(arr: list):
    """
    Подход №1:
    Пройти по массиву один раз. Cравнивая и запоминая значения,
    найти минимальные элементы.
    Сложность: O(n)
    """
    min1 = min2 = arr[0]
    for i in arr:
        if min1 is None or min1 > i:
            min2 = min1
            min1 = i
        elif min2 is None or min2 > i:
            min2 = i
    return min1, min2


def solve2(arr: list):
    """
    Подход №2:
    Отсортировать массив по возрастанию и найти первые два элемента.
    Сложность: O(n log n)
    """
    arr.sort()
    return arr[0], arr[1]


if __name__ == '__main__':
    arr = list(map(int, input().split()))
    if len(arr) < 2:
        print('Массив должен содержать минимум 2 элемента.')
    else:
        print("Метод #1:", solve1(arr))
        print("Метод #2:", solve2(arr))
