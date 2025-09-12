program quiz4
  implicit none
  real :: x = -7.5

  if (x < 0.0) then
     x = -x
  end if

  print*, "Result:", x
end program