program quiz_solution
  implicit none

  integer :: a, b, score, n, i, sum, prod, total
  real :: rs
  integer, dimension(5) :: arr


  ! Quiz 1
  integer :: iv1, iv2
  real :: rv
  iv1 = 15
  iv2 = 27
  rv = iv1 + iv2
  print*, "Sum =", rv


  ! Quiz 2
  a = 17
  b = 5
  print*, "Quotient =", a / b
  print*, "Remainder =", mod(a,b)
  print*, "Division =", real(a)/real(b)


  ! Quiz 3
  print*, "Enter score:"
  read*, score
  if (score >= 90) then
     print*, "Grade = A"
  else if (score >= 80) then
     print*, "Grade = B"
  else if (score >= 70) then
     print*, "Grade = C"
  else
     print*, "Grade = F"
  end if


  ! Quiz 4
  print*, "Enter n:"
  read*, n
  sum = 0
  prod = 1
  do i = 1,n
     sum = sum + i
     prod = prod * i
  end do
  print*, "Sum =", sum
  print*, "Product =", prod


  ! Quiz 5
  total = 0
  do i = 1,5
     arr(i) = i*i
  end do
  do i = 1,5
     print*, "arr(",i,") =", arr(i)
     total = total + arr(i)
  end do
  print*, "Sum =", total

end program quiz_solution
