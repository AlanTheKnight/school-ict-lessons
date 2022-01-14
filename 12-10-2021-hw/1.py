start, end = int("10000", 8), int("77777", 8)
count = 0
for i in range(start, end + 1):
    octal = list(map(int, list(oct(i).split('o')[1])))
    f, s = sum(octal[:2]), sum(octal[-2:])
    if abs(f - s) <= 3:
        count += 1
print(count)  # 15824
