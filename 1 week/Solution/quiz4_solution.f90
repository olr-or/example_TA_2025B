program quiz4
    implicit none
    integer :: age
    logical :: is_adult

    age = 17
    is_adult = (age >= 18)

    if (is_adult) then
        print *, "Adult"
    else
        print *, "Minor"
    end if
end program quiz4
