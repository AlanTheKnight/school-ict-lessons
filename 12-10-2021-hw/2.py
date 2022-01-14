start, end = 980, 5320
count, minimal = 0, 5321
for i in range(start, end + 1):
    if (i % 4 == 0 or i % 5 == 0) and not(i % 11 == 0 or i % 17 == 0 or i % 19 == 0 or i % 23 == 0):
        count += 1
        minimal = min(minimal, i)
print(count, minimal)  # 167 980
