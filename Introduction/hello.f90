program hello
    implicit none
    integer :: i

    print *, "==========================="
    print *, " Hello, Fortran World! "
    print *, "==========================="

    do i = 1, 5
        print *, "Iteration:", i
    end do

    print *, "The program has finished successfully."
end program hello
