SUITE_INFO = ("Algorithmic Puzzles Suite", "build: 2025-11", "author: demo")


print("===== SUITE INFO =====")
for x in SUITE_INFO:
    print(x)
print("======================\n")

#1
print("Fib: f(0)=2, f(1)=3, f(k)=f(k-1)+f(k-2)")

fib_like = [2, 3]
target_len = 20

while len(fib_like) < target_len:
    a = fib_like[-1]
    b = fib_like[-2]
    fib_like.append(a + b)
    
print("len:", len(fib_like))
print("fib_like:", fib_like[:10])
print()


#2
print("Triangle Classification (integer sides)")

triangles = [(3, 4, 5), (2, 2, 2), (5, 7, 10), (1, 2, 3), (6, 6, 9), (10, 10, 10), (7, 9, 12), (8, 15, 17)]

i = 0
while i < len(triangles):
    a, b, c = triangles[i]
    valid = (a + b > c) and (a + c > b) and (b + c > a)

    if not valid:
        kind = "Invalid"
    else:
        if a == b == c:
            kind = "Equilateral"
        elif a == b or b == c or a == c:
            kind = "Isosceles"
        else:
            x, y, z = a, b, c
            if x > y:
                x, y = y, x
            if y > z:
                y, z = z, y
            if x > y:
                x, y = y, x
            if x*x + y*y == z*z:
                kind = "Right"
            else:
                kind = "Scalene"
    print(f"{(a,b,c)} -> {kind}")
    i += 1
print()


#3
print("2D Path Simulation")
moves = "UURDDLUL"
position = [0, 0]
index = 0

while index < len(moves):
    mv = moves[index]
    if mv == "U":
        position[1] += 1
    elif mv == "D":
        position[1] -= 1
    elif mv == "L":
        position[0] -= 1
    elif mv == "R":
        position[0] += 1
    index += 1

final_position = (position[0], position[1])
print("Start: (0,0) -> End:", final_position)
print()


#4
print("Run-Length Encoding (RLE)")

text = "aaabbccccdde"
encoded = []
i = 0

while i < len(text):
    ch = text[i]
    count = 1
    j = i + 1
    while j < len(text) and text[j] == ch:
        count += 1
        j += 1
    encoded.append((ch, count))
    i = j

print("Original:", text)
print("Compressed:", encoded)
print()


#5
print("Word Sorting by Length + Alphabetical")

words = ["alpha", "hi", "z", "hello", "world", "ai", "python", "code", "aa", "ab", "aaa"]
arr = words[:]

i = 0
while i < len(arr):
    j = 0
    while j + 1 < len(arr):
        w1 = arr[j]
        w2 = arr[j+1]
        swap = False
        if len(w1) > len(w2):
            swap = True
        elif len(w1) == len(w2) and w1 > w2:
            swap = True
        if swap:
            arr[j], arr[j+1] = arr[j+1], arr[j]
        j += 1
    i += 1

print("Original:", words)
print("Sorted:", arr)
print()


#6
print("Remove Duplicates, Keep First Occurrence")

nums = [5,3,5,2,3,7,9,7,7,1,2,4,4,4,8]
seen = []
unique_list = []

i = 0
while i < len(nums):
    v = nums[i]
    if v not in seen:
        seen.append(v)
        unique_list.append(v)
    i += 1

print("Original:", nums)
print("Unique:", unique_list)
print()


#7
print("Score Labeling")

scores = [97, 83, 58, 74, 90, 100, 69]
labels = []

i = 0
while i < len(scores):
    s = scores[i]
    if s >= 90:
        labels.append("A")
    elif s >= 80:
        labels.append("B")
    elif s >= 70:
        labels.append("C")
    elif s >= 60:
        labels.append("D")
    else:
        labels.append("F")
    i += 1

print("Scores:", scores)
print("Grades:", labels)
print()


#8
print("Simple 2D Grid Movement")

board = [
    list("..#..."),
    list("...#.."),
    list("##..#."),
    list("..#...")
]

r, c = 0, 0
path = []
steps = 0

rows = len(board)
cols = len(board[0])

while steps < 50:
    if r < 0 or r >= rows or c < 0 or c >= cols:
        break
    path.append((r, c))
    if c + 1 < cols and board[r][c+1] == ".":
        c += 1
    elif r + 1 < rows and board[r+1][c] == ".":
        r += 1
    else:
        break
    steps += 1

print("Path:", path)
print()


#9
print("Expression Parser: '12 + 7 - 3 * 2 + 4'")

expr = "12 + 7 - 3 * 2 + 4"
tokens = []
buf = ""
i = 0

while i < len(expr):
    ch = expr[i]
    if ch.isdigit():
        buf += ch
    else:
        if buf != "":
            tokens.append(buf)
            buf = ""
        if ch in "+-*":
            tokens.append(ch)
    i += 1
if buf != "":
    tokens.append(buf)

mid = []
i = 0
while i < len(tokens):
    t = tokens[i]
    if t == "*":
        left = int(mid.pop())
        right = int(tokens[i+1])
        mid.append(str(left * right))
        i += 2
    else:
        mid.append(t)
        i += 1

result = int(mid[0])
i = 1
while i < len(mid):
    op = mid[i]
    val = int(mid[i+1])
    if op == "+":
        result += val
    elif op == "-":
        result -= val
    i += 2

print("Tokens:", tokens)
print("Eval:", result)
print()


#10
print("ASCII Diamond")

N = 9
if N % 2 == 0:
    N += 1

half = N // 2
lines = []
row = 0

while row < N:
    if row <= half:
        stars = 2*row + 1
    else:
        k = N - 1 - row
        stars = 2*k + 1
    spaces = (N - stars) // 2
    line = " " * spaces + "*" * stars
    lines.append(line)
    row += 1

print("\n".join(lines))
print()


#11
print("Reverse Subarray (range 3 to 8)")

arr = list(range(1, 13))
L, R = 3, 8
L0 = L - 1
R0 = R - 1

left = arr[:L0]
mid = []
p = R0
while p >= L0:
    mid.append(arr[p])
    p -= 1
right = arr[R0+1:]
arr = left + mid + right

print("Result:", arr)
print()


#12
print("Base Conversion (Manual)")

val10 = 1234
bases = [2, 8, 16]
digits = "0123456789ABCDEF"

for base in bases:
    temp = val10
    if temp == 0:
        rep = "0"
    else:
        out = []
        while temp > 0:
            r = temp % base
            out.append(digits[r])
            temp //= base
        rep = "".join(reversed(out))
    print(f"{val10} -> base {base}:", rep)

print()


#13
print("Month and Days Formatting")

months = [("Jan",31),("Feb",28),("Mar",31),("Apr",30),("May",31),("Jun",30)]
line = ""

i = 0
while i < len(months):
    name, days = months[i]
    block = f"{name}:{days}"
    if line == "":
        line = block
    else:
        line += " | " + block
    i += 1

print(line)
print()

print("===== END =====")
