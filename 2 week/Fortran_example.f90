! Build -> gfortran -g -O0 <file name>.f90 -o <file name>

program lecture_example
  implicit none

  ! 1. Overview

  print*, "=== Fortran Overview ==="
  print*, "This program demonstrates variables,"
  print*, "arithmetic operations, and control statements."

  ! 2. Variables

  integer :: ivar = 10, jvar = 3
  real :: xvar = 2.5, yvar = -7.2
  double precision :: dvar = 3.141592653589793D0
  logical :: flag = .true.
  character(len=10) :: name

  name = "Fortran"
  print*
  print*, "=== Variables ==="
  print*, "Integer ivar =", ivar
  print*, "Real xvar =", xvar
  print*, "Double precision dvar =", dvar
  print*, "Logical flag =", flag
  print*, "Character name =", name

  ! 3. Arithmetic Operations

  print*
  print*, "=== Arithmetic Operations ==="
  print*, "ivar + jvar =", ivar + jvar
  print*, "ivar - jvar =", ivar - jvar
  print*, "ivar * jvar =", ivar * jvar
  print*, "ivar / jvar =", ivar / jvar      ! 정수 나눗셈
  print*, "real division (xvar / jvar) =", xvar / jvar
  print*, "ivar ** jvar =", ivar ** jvar
  print*, "sqrt(xvar) =", sqrt(xvar)
  print*, "mod(ivar, jvar) =", mod(ivar, jvar)

  ! 4. Control Statements

  ! (1) IF문
  print*
  print*, "=== Control Statements: IF ==="
  if (xvar > 0.0) then
     print*, "xvar is positive."
  else
     print*, "xvar is not positive."
  end if

  ! (2) IF-ELSE IF문
  print*
  print*, "=== Control Statements: IF-ELSEIF ==="
  if (ivar > 10) then
     print*, "ivar > 10"
  else if (ivar == 10) then
     print*, "ivar == 10"
  else
     print*, "ivar < 10"
  end if

  ! (3) SELECT CASE문
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

  ! (4) 산술 IF문
  print*
  print*, "=== Control Statements: Arithmetic IF ==="
  if (ivar - jvar) 100, 200, 300
100 print*, "ivar - jvar < 0"
    goto 400
200 print*, "ivar - jvar == 0"
    goto 400
300 print*, "ivar - jvar > 0"
400 continue

  ! (5) GOTO문 활용
  print*
  print*, "=== Control Statements: GOTO ==="
  goto 500
  print*, "This line will be skipped."
500 print*, "Jumped here with GOTO."

  ! (6) STOP문
  print*
  print*, "=== Program End with STOP ==="
  stop
end program lecture_example
