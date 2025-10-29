# ==========================================
# Python Practice: Intermediate Level
# Overview · Data Types · Operators · Conditions · Lists
# ==========================================

profile = {"name": "Eve", "age": 29, "height": 170.2, "student": False}
for key, val in profile.items():
    print(f"{key:>7}: {val} ({type(val).__name__})")

x, y, z = 3, 5, 7
x, y, z = z, x, y
print(x, y, z)  # 7 3 5


s = "DataScience"
chars = list(s)
chars[4:10] = ["_", "AI"]
print("".join(chars))


a = [1, 2, 3]
b = a
a += [4]
print(a, b)
print(a is b)

t1 = (1, 2, 3)
t2 = t1
t1 += (4,)
print(t1, t2)
print(t1 is t2)

x = 12.3456
print(f"{x:8.2f}", "{:.3e}".format(x), f"{x:.1%}")


n = 13  # 1101
mask = 6  # 0110
print(n & mask, n | mask, n ^ mask, ~n)

a, b, c = 1, 2, 3
print(a < b < c < 5)
print((a < b) and (b < c) and (c < 5))

val = 0
print(val or "default")
print(val and 100)       # 0

arr = [1, 2]
nested = [arr] * 3
nested[0][0] = 99
print(nested)

num = 28
if num % 4 == 0 and not (num % 100 == 0 and num % 400 != 0):
    print(f"{num}은(는) 윤년처럼 4의 배수지만, 윤년은 아님.")
elif num % 2 == 0:
    print(f"{num}은(는) 짝수이지만 4의 배수는 아님.")
else:
    print(f"{num}은(는) 홀수입니다.")

x = 12
msg = "High" if x > 15 else "Mid" if x > 8 else "Low"
print(msg)

status = 404
responses = {200: "OK", 403: "Forbidden", 404: "Not Found"}
print(responses.get(status, "Unknown Error"))

matrix = [[i*j for j in range(1, 5) if j != i] for i in range(1, 5)]
print(matrix)

flat = [x for row in matrix for x in row]
print(flat)

temps = [12, -5, 7, 0, 15, -2]
converted = ["warm" if t > 10 else "cold" if t < 0 else "mild" for t in temps]
print(list(zip(temps, converted)))

names = ["Alice", "Bob", "Charlie"]
scores = [88, 92, 79]
for idx, (n, s) in enumerate(zip(names, scores), start=1):
    print(f"{idx}. {n:<8} → {s}")

data = [[], [1, 2], [], [0]]
print(any(data), all(data))
