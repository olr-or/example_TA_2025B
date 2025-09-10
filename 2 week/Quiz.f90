! Quiz 1
! This program tries to calculate the average of two numbers, but the result is incorrect. 
! Fix the code.

program quiz1
  implicit none
  integer :: a=10, b=20
  real :: avg

  avg = (a + b) / 2    ! Needs correction

  print*, "Average =", avg
end program



! Quiz 2
! The following code has an invalid variable name. 
! Correct it according to Fortran rules.

program quiz2
  implicit none
  integer :: total-sum   ! Invalid

  total-sum = 100
  print*, total-sum
end program



! Quiz 3
! This program determines whether the input integer is odd or even. 
! Fill in the blank.

program quiz3
  implicit none
  integer :: n, r

  print*, "Enter an integer:"
  read*, n
  r = mod(n, 2)

  if ( ____________ ) then
     print*, "Odd"
  else
     print*, "Even"
  end if
end program



! Quiz 4
! This program should convert a negative number into a positive one, but it has an error. 
! Fix the code.

program quiz4
  implicit none
  real :: x = -7.5

  if (x < 0.0) 
     x = -x
  end if     ! Error

  print*, "Result:", x
end program



! Quiz 5
! This program assigns grades based on the score. 
! Complete the missing condition.

program quiz5
  implicit none
  real :: score
  character :: grade

  print*, "Enter score:"
  read*, score

  if (score >= 90.0) then
     grade = 'A'
  else if ( ____________ ) then
     grade = 'B'
  else
     grade = 'C'
  end if

  print*, "Grade =", grade
end program

