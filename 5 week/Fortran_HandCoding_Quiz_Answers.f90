Fortran Hand-Coding Quiz Answers

--------------------------------------------------
Q1) Variables (Easy)
program Q1
  implicit none
  integer :: a, b, sum
  a = 12
  b = 25
  sum = a + b
  print*, "a =", a
  print*, "b =", b
  print*, "Sum =", sum
end program Q1

--------------------------------------------------
Q2) Arithmetic Operations (Medium)
program Q2
  implicit none
  integer :: x, y
  print*, "Enter two integers:"
  read*, x, y
  print*, "Quotient =", x / y
  print*, "Remainder =", mod(x,y)
  print*, "Division =", real(x)/real(y)
end program Q2

--------------------------------------------------
Q3) Control Statement – Maximum (Medium)
program Q3
  implicit none
  integer :: a, b, c, maxval
  print*, "Enter three integers:"
  read*, a, b, c
  maxval = a
  if (b > maxval) maxval = b
  if (c > maxval) maxval = c
  print*, "Max =", maxval
end program Q3

--------------------------------------------------
Q4) Loops – Sum and Product (Upper-Medium)
program Q4
  implicit none
  integer :: n, i, sum, prod
  print*, "Enter n:"
  read*, n
  sum = 0
  prod = 1
  do i = 1, n
     sum = sum + i
     prod = prod * i
  end do
  print*, "Sum =", sum
  print*, "Product =", prod
end program Q4

--------------------------------------------------
Q5) Arrays – Sum and Average (Upper-Medium)
program Q5
  implicit none
  integer, dimension(5) :: arr
  integer :: i, sum
  real :: avg
  sum = 0
  print*, "Enter 5 integers:"
  do i = 1,5
     read*, arr(i)
     sum = sum + arr(i)
  end do
  avg = real(sum)/5.0
  print*, "Sum =", sum
  print*, "Average =", avg
end program Q5

--------------------------------------------------
Q6) Control + Loops – Prime Check (High)
program Q6
  implicit none
  integer :: n, i
  logical :: isprime
  print*, "Enter n:"
  read*, n
  isprime = .true.
  if (n <= 1) then
     isprime = .false.
  else
     do i = 2, n-1
        if (mod(n,i) == 0) then
           isprime = .false.
           exit
        end if
     end do
  end if
  if (isprime) then
     print*, n, "is a prime number."
  else
     print*, n, "is not a prime number."
  end if
end program Q6

--------------------------------------------------
Q7) Arrays – Maximum and Minimum (High)
program Q7
  implicit none
  integer, dimension(7) :: arr
  integer :: i, maxval, minval
  print*, "Enter 7 integers:"
  do i = 1,7
     read*, arr(i)
  end do
  maxval = arr(1)
  minval = arr(1)
  do i = 2,7
     if (arr(i) > maxval) maxval = arr(i)
     if (arr(i) < minval) minval = arr(i)
  end do
  print*, "Max =", maxval
  print*, "Min =", minval
end program Q7

--------------------------------------------------
Q8) File Processing – Data Summary (Very High)
program Q8
  implicit none
  integer :: i, num, sum, count
  real :: avg
  sum = 0
  count = 0
  open(unit=10, file="numbers.txt", status="old")
  do
     read(10,*,end=100) num
     sum = sum + num
     count = count + 1
  end do
100 continue
  close(10)
  avg = real(sum)/real(count)
  open(unit=20, file="result.txt", status="replace")
  write(20,*) "Sum =", sum
  write(20,*) "Average =", avg
  close(20)
end program Q8
