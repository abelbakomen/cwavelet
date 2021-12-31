module utilities
implicit none

contains

    ! Generates evenly spaced numbers from `from` to `to` (inclusive).
    ! 
    ! Inputs:
    ! -------
    ! 
    ! from, to : the lower and upper boundaries of the numbers to generate
    ! 
    ! Outputs:
    ! -------
    ! 
    ! array : Array of evenly spaced numbers
    ! 
    subroutine linspace(from, to, array)
    
        real, intent(in) :: from, to
        real, intent(out) :: array(:)
        real :: range
        integer :: n, i
        n = size(array)
        range = to - from

        if (n == 0) return

        if (n == 1) then
            array(1) = from
            return
        end if


        do i=1, n
            array(i) = from + range * (i - 1) / (n - 1)
        end do
    end subroutine  

    elemental real function produit(a,b)
        real, intent(in) :: a,b

        produit = a*b
    end function
end module

