program quiz5
  implicit none
  real :: score
  character :: grade

  print*, "Enter score:"
  read*, score

  if (score >= 90.0) then
     grade = 'A'
  else if (score >= 80.0) then
     grade = 'B'
  else
     grade = 'C'
  end if

  print*, "Grade =", grade
end program

