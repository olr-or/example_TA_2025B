program quiz_solutions
implicit none

integer :: i, j, maxVal, num
integer, dimension(8) :: arr
integer, dimension(5) :: arr2 = [12, 5, 9, 20, 7]
integer, dimension(2,2) :: A, B, C


! Quiz 1
do i = 1, 8
    arr(i) = 2*i + 3
end do
print *, arr


! Quiz 2
maxVal = arr2(1)
do i = 2, 5
    if (arr2(i) > maxVal) maxVal = arr2(i)
end do
print *, maxVal


! Quiz 3
do i = 3, 5
    do j = 1, 4
        print *, i, "x", j, "=", i*j
    end do
end do


! Quiz 4
A = reshape([1,2,3,4], [2,2])
B = reshape([5,6,7,8], [2,2])
C = A + B
do i = 1, 2
    write(*,"(2I5)") C(i,1), C(i,2)
end do


! Quiz 5
num = 27
if (mod(num,2) == 0) then
    print *, "Even"
else
    print *, "Odd"
end if

end program quiz_solutions
