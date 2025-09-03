! Quiz 1
! Declare an integer variable age and a real variable weight, assign values, and print them.
! Why does this code fail to compile ?

program quiz1
    implicit none

    age = 20
    weight = 55.5

    print *, "Age:", age
    print *, "Weight:", weight
end program quiz1



! Quiz 2
! Declare a character variable name to store a string up to 20 characters, assign "Bob", and print it.
! Why does the name print incorrectly ?

program quiz2
    implicit none

    character :: name
    name = "Bob"
    print *, "Name:", name
end program quiz2


! Quiz
! Declare a constant PI = 3.14159 and compute the area of a circle with radius r = 5.0.
! Why is it wrong to change the value of PI ?

program quiz3
    implicit none

    real :: PI = 3.14159
    real :: r, area

    r = 5.0
    PI = 3.14
    area = PI * r * r

    print *, "Circle area:", area
end program quiz3



! Quiz 4
! Use a logical variable is_adult to check if age >= 18. If true, print "Adult", else print "Minor".
! Why does is_adult = true not work in Fortran ?

program quiz4
    implicit none

    integer :: age
    logical :: is_adult

    age = 17
    is_adult = true
    if (is_adult) then
        print *, "Adult"
    else
        print *, "Minor"
    end if
end program quiz4



! Quiz 5
! Declare a constant gravity = 9.8 and try to modify it. Explain why it fails.
! Why does this code fail to compile ?

program quiz5
    implicit none

    real, parameter :: gravity = 9.8
    gravity = 9.81
    print *, "Gravity:", gravity
end program quiz5
