program variable_example
    implicit none

    ! Integer variable
    integer :: age
    ! Real variable
    real :: height
    ! Logical variable
    logical :: is_student
    ! Character variable
    character(len=20) :: name
    ! Constant (parameter)
    real, parameter :: PI = 3.14159

    ! Assign values
    age = 21
    height = 170.5
    is_student = .true.
    name = "Alice"

    ! Output values
    print *, "=== Variable Example ==="
    print *, "Name:", name
    print *, "Age:", age
    print *, "Height:", height
    print *, "Is Student?:", is_student
    print *, "Pi constant:", PI

    ! This will cause an error because PI is a constant:
    ! PI = 3.14   ! Compile-time error

end program variable_example

