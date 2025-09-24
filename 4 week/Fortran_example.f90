program Fortran_example
implicit none

integer :: i, j, n, total, maxVal, minVal, counter
integer, dimension(10) :: arr
integer, dimension(3,3) :: matA, matB, matC
real :: avg, sumSquares
logical :: found

n = 10
total = 0
sumSquares = 0.0
counter = 0

! Print the sum and average of the array elements
do i = 1, n
    arr(i) = i*i - 2*i + 5
    total = total + arr(i)
    sumSquares = sumSquares + real(arr(i)**2)
end do

print *, "Sum and average of array elements:"
avg = real(total) / real(n)
write(*,'(" Sum: ",I5,"   Avg: ",F8.2)') total, avg

maxVal = arr(1)
minVal = arr(1)

! Find and print the maximum and minimum values in the array
do i = 2, n
    if (arr(i) > maxVal) then
        maxVal = arr(i)
    else if (arr(i) < minVal) then
        minVal = arr(i)
    end if
end do
print *, "Maximum and minimum values in the array:"
write(*,'(" Max: ",I5,"   Min: ",I5)') maxVal, minVal

! Print 1 if the average is greater than 15.0, otherwise print 0
print *, "Is average greater than 15.0? (1: Yes, 0: No)"
write(*,'(I2)') merge(1,0,avg>15.0)

! Print the multiplication table for i = 2 to 4 and j = 1 to 5
print *, "Multiplication table (i=2~4, j=1~5):"
do i = 2, 4
    write(*,'(5(I4))') (i*j, j=1,5)
end do

! Print the index of the first occurrence of 20 in the array, or -1 if not found
print *, "Index of first occurrence of 20 in array (or -1 if not found):"
found = .false.
do i = 1, n
    if (arr(i) == 20) then
        write(*,'(" Index: ",I2)') i
        found = .true.
        exit
    end if
end do
if (.not. found) write(*,'(" Index: ",I2)') -1

! Print the array elements in reverse order
print *, "Array elements in reverse order:"
write(*,'(10(I4))') (arr(i), i=n,1,-1)

! Print a value based on the remainder when the sum is divided by 4
print *, "Value based on remainder when sum is divided by 4:"
select case (mod(total, 4))
case (0)
    write(*,'("Value: ",I3)') 100
case (1)
    write(*,'("Value: ",I3)') 200
case (2)
    write(*,'("Value: ",I3)') 300
case default
    write(*,'("Value: ",I3)') 400
end select

! Matrix addition
do i = 1, 3
    do j = 1, 3
        matA(i,j) = i + j
        matB(i,j) = i * j
    end do
end do

do i = 1, 3
    do j = 1, 3
        matC(i,j) = matA(i,j) + matB(i,j)
    end do
end do

print *, "Resulting 3x3 matrix after adding matA and matB:"
do i = 1, 3
    write(*,'(3(I5))') matC(i,1), matC(i,2), matC(i,3)
end do

! Print the sum of the array elements calculated using a while loop
i = 1
total = 0
    
do while (i <= n)
    total = total + arr(i)
    i = i + 1
end do
print *, "Sum of array elements (calculated with while loop):"
write(*,'(" Sum: ",I5)') total

! Print the number of even elements in the array
counter = 0

do i = 1, n
    if (mod(arr(i),2) == 0) counter = counter + 1
end do
print *, "Number of even elements in the array:"
write(*,'(" Even count: ",I2)') counter

end program Fortran_example