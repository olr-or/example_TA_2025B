# Python Lecture Example
# Overview · Data Types · Operators · Conditions · Lists

# -------------------------------
# 1. 개요 (Overview)
# -------------------------------
name = "Alice"
age = 24
height = 164.3
is_student = True

print(f"{name} ({age}세) / 키 {height}cm / 학생 여부: {is_student}")
print(f"자료형: {type(name)}, {type(age)}, {type(height)}, {type(is_student)}")

# 동적 타이핑 예시
x = 10
x = "type change"
print(x)
print()

# -------------------------------
# 2. 자료형 (Data Types)
# -------------------------------
text = "Python"
print(text[0], text[-1])          # 인덱싱
print(text[1:4])                  # 슬라이싱
print(text * 2)                   # 문자열 반복
print(text.upper(), text.lower()) # 문자열 메서드

pi = 3.141592
print(round(pi, 2))
print(bool(""), bool("Hi"))       # 빈 문자열은 False
print()

# -------------------------------
# 3. 연산자 (Operators)
# -------------------------------
a, b = 15, 4
print(a + b, a - b, a * b, a / b, a // b, a % b)
print(a ** b)

# 복합 대입
a += 5
print(a)

# 논리연산
x, y = True, False
print(x and y, x or y, not x)

# 비교연산 체인
n = 7
print(3 < n <= 10)  # True

# 삼항 연산자
score = 85
grade = "A" if score >= 90 else "B" if score >= 80 else "C"
print("학점:", grade)
print()

# -------------------------------
# 4. 조건문 (Conditionals)
# -------------------------------
temp = 28
humid = 65

if temp > 30 and humid > 70:
    print("불쾌지수 높음")
elif temp > 25 and humid <= 70:
    print("따뜻함")
elif temp <= 10 or humid < 20:
    print("건조함")
else:
    print("보통")

# 중첩 조건
year = 2024
if year % 4 == 0:
    if year % 100 != 0 or year % 400 == 0:
        print(f"{year}년은 윤년입니다.")
    else:
        print(f"{year}년은 평년입니다.")
print()

# -------------------------------
# 5. 리스트 (Lists)
# -------------------------------
nums = [3, 1, 4, 1, 5, 9]
print("원본 리스트:", nums)

nums.append(2)
nums.sort()
print("정렬 후:", nums)
print("길이:", len(nums), "최대값:", max(nums), "합계:", sum(nums))

# 리스트 슬라이싱
print("홀수 인덱스:", nums[1::2])

# 리스트 내포 (Comprehension)
squares = [x ** 2 for x in range(1, 6)]
print("제곱 리스트:", squares)

# 조건을 포함한 내포
evens = [x for x in range(10) if x % 2 == 0]
print("짝수 리스트:", evens)

# 2차원 리스트
matrix = [[i * j for j in range(1, 4)] for i in range(1, 4)]
for row in matrix:
    print(row)
print("행렬 원소 총합:", sum(sum(row) for row in matrix))
