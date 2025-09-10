! Build -> gfortran -g <file name>.f90 -o <file name>

program lecture_example
  implicit none
  integer :: ivar, jvar
  real :: xvar, yvar
  double precision :: dvar
  logical :: flag
  character(len=10) :: name

  ivar = 10
  jvar = 3
  xvar = 2.5
  yvar = -7.2
  dvar = 3.141592653589793D0
  flag = .true.
  name = "Fortran"

  print*, "=== Fortran Overview ==="
  print*, "This program demonstrates variables,"
  print*, "arithmetic operations, and control statements."
  print*, "========================="

  print*
  print*, "=== Variables ==="
  print*, "Integer ivar =", ivar
  print*, "Real xvar =", xvar
  print*, "Double precision dvar =", dvar
  print*, "Logical flag =", flag
  print*, "Character name =", name

  print*
  print*, "=== Arithmetic Operations ==="
  print*, "ivar + jvar =", ivar + jvar
  print*, "ivar - jvar =", ivar - jvar
  print*, "ivar * jvar =", ivar * jvar
  print*, "ivar / jvar =", ivar / jvar
  print*, "real division (xvar / jvar) =", xvar / jvar
  print*, "ivar ** jvar =", ivar ** jvar
  print*, "sqrt(xvar) =", sqrt(xvar)
  print*, "mod(ivar, jvar) =", mod(ivar, jvar)

  print*
  print*, "=== Control Statements: IF ==="
  if (xvar > 0.0) then
     print*, "xvar is positive."
  else
     print*, "xvar is not positive."
  end if

  print*
  print*, "=== Control Statements: IF-ELSEIF ==="
  if (ivar > 10) then
     print*, "ivar > 10"
  else if (ivar == 10) then
     print*, "ivar == 10"
  else
     print*, "ivar < 10"
  end if

  print*
  print*, "=== Control Statements: SELECT CASE ==="
  select case (jvar)
  case (1)
     print*, "jvar is 1"
  case (2, 3)
     print*, "jvar is 2 or 3"
  case default
     print*, "jvar is something else"
  end select

  print*
  print*, "=== Control Statements: Modern IF ==="
  if (ivar - jvar < 0) then
     print*, "ivar - jvar < 0"
  else if (ivar - jvar == 0) then
     print*, "ivar - jvar == 0"
  else
     print*, "ivar - jvar > 0"
  end if

  print*
  print*, "=== Control Statements: GOTO ==="
  goto 500
  print*, "This line will be skipped."
500 print*, "Jumped here with GOTO."

  print*
  print*, "=== Program End with STOP ==="
  stop
end program lecture_example
