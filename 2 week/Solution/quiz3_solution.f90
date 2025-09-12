program quiz3
  implicit none
  integer :: n, r

  print*, "Enter an integer:"
  read*, n
  r = mod(n, 2)

  if (r == 1) then
     print*, "Odd"
  else
     print*, "Even"
  end if
end program
