program lecture_example
  implicit none
  integer :: i, j, n
  integer :: ivar, jvar
  real :: xvar, yvar, avg
  double precision :: dvar
  logical :: flag
  character(len=20) :: name
  integer :: sum
  integer, dimension(5) :: arr
  integer, dimension(3,3) :: mat
  real :: rsum
  integer :: counter

  ivar = 10
  jvar = 3
  xvar = 2.5
  yvar = -7.2
  dvar = 3.141592653589793D0
  flag = .true.
  name = "Fortran"

  print*, "=============================="
  print*, " Fortran Lecture Example"
  print*, " Variables, Arithmetic,"
  print*, " Control, Loops, Arrays"
  print*, "=============================="

  print*
  print*, "=== Variables ==="
  print*, "Integer ivar =", ivar
  print*, "Integer jvar =", jvar
  print*, "Real xvar =", xvar
  print*, "Real yvar =", yvar
  print*, "Double precision dvar =", dvar
  print*, "Logical flag =", flag
  print*, "Character name =", name

  print*
  print*, "=== Arithmetic Operations ==="
  print*, "ivar + jvar =", ivar + jvar
  print*, "ivar - jvar =", ivar - jvar
  print*, "ivar * jvar =", ivar * jvar
  print*, "ivar / jvar (int division) =", ivar / jvar
  print*, "xvar / jvar (real division) =", xvar / jvar
  print*, "ivar ** jvar =", ivar ** jvar
  print*, "sqrt(xvar) =", sqrt(xvar)
  print*, "mod(ivar,jvar) =", mod(ivar,jvar)
  avg = (ivar + xvar) / 2.0
  print*, "Average of ivar and xvar =", avg

  print*
  print*, "=== Control Statements ==="
  if (xvar > 0.0) then
     print*, "xvar is positive"
  else
     print*, "xvar is not positive"
  end if

  if (ivar > 10) then
     print*, "ivar > 10"
  else if (ivar == 10) then
     print*, "ivar == 10"
  else
     print*, "ivar < 10"
  end if

  select case (jvar)
  case (1)
     print*, "jvar is 1"
  case (2,3)
     print*, "jvar is 2 or 3"
  case default
     print*, "jvar is something else"
  end select

  print*
  print*, "=== Loops (DO) ==="
  sum = 0
  do i = 1, 10
     sum = sum + i
  end do
  print*, "Sum 1 to 10 =", sum

  print*
  print*, "=== Loop with EXIT ==="
  counter = 0
  do
     counter = counter + 1
     if (counter > 5) exit
     print*, "Counter =", counter
  end do

  print*
  print*, "=== Loop with CYCLE ==="
  do i = 1, 10
     if (mod(i,2) == 0) cycle
     print*, "Odd number:", i
  end do

  print*
  print*, "=== 1D Array ==="
  do i = 1,5
     arr(i) = i * 2
  end do
  print*, "Array values:"
  do i = 1,5
     print*, "arr(",i,") =", arr(i)
  end do

  sum = 0
  do i = 1,5
     sum = sum + arr(i)
  end do
  print*, "Sum of array elements =", sum

  print*
  print*, "=== 2D Array (Matrix) ==="
  do i = 1,3
     do j = 1,3
        mat(i,j) = i*j
     end do
  end do

  print*, "Matrix values:"
  do i = 1,3
     print*, (mat(i,j), j=1,3)
  end do

  rsum = 0.0
  do i = 1,3
     do j = 1,3
        rsum = rsum + mat(i,j)
     end do
  end do
  print*, "Sum of matrix elements =", rsum
 
  print*
  print*, "=== End of Lecture Example ==="
  stop
end program lecture_example
