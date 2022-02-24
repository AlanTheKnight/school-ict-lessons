#!/usr/bin/python3

# Задание:
# Найти два максимальных элемента в массиве.

def solve1(arr: list):
    """
    Подход №1:
    Пройти по массиву один раз. Cравнивая и запоминая значения,
    найти максимальные элементы.
    Сложность: O(n)
    """
    max1 = max2 = None
    for i in arr:
        if max1 is None or max1 < i:
            max2 = max1
            max1 = i
        elif max2 is None or max2 < i:
            max2 = i
    return max1, max2


def solve2(arr: list):
    """
    Подход №2:
    Отсортировать массив по убыванию и найти первые два элемента.
    Сложность: O(n log n)
    """
    arr.sort(reverse=True)
    return arr[0], arr[1]


if __name__ == '__main__':
    arr = list(map(int, input().split()))
    if len(arr) < 2:
        print('Массив должен содержать минимум 2 элемента.')
    else:
        print("Метод #1:", solve1(arr))
        print("Метод #2:", solve2(arr))
