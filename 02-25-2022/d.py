#!/usr/bin/python3

# Задача: даны координаты n точек на плоскости.
# Найти номера двух точек, расстояние между 
# которыми наибольшее.

def distance(p1: list[int], p2: list[int]) -> int:
    """Расстояние между двумя точками."""
    return ((p1[0] - p2[0]) ** 2 + (p1[1] - p2[1]) ** 2) ** 0.5


def solve(points: list[list[int]]) -> list[int]:
    from math import inf
    mn = [inf, 0, 0]
    for i in range(0, len(points)):
        for j in range(0, len(points)):
            if i != j:
                d = distance(points[i], points[j])
                if d < mn[0]:
                    mn = [d, i, j]
    return [mn[1] + 1, mn[2] + 1]


if __name__ == "__main__":
    n = int(input())
    points = []
    for i in range(n):
        points.append(list(map(int, input().split())))
    print(*solve(points))
