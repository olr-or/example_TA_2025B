program matrix
implicit none

! Matrix multiplication example
integer, dimension(2,2) :: A, B, C
integer :: r, s, t

! Initialize matrices (column-major order)
A = reshape([1, 2, 3, 4], [2,2])
B = reshape([5, 6, 7, 8], [2,2])

! Print matrices for confirmation
print *, "Matrix A:"
do r = 1, 2
    write(*,'(2(I5))') A(r,1), A(r,2)
end do

print *, "Matrix B:"
do r = 1, 2
    write(*,'(2(I5))') B(r,1), B(r,2)
end do

! Perform matrix multiplication: C = A x B
C = 0
do r = 1, 2
    do s = 1, 2
        do t = 1, 2
            C(r,s) = C(r,s) + A(r,t) * B(t,s)
        end do
    end do
end do

print *, "Result of 2x2 matrix multiplication (A x B):"
do r = 1, 2
    write(*,'(2(I5))') C(r,1), C(r,2)
end do

end program matrix