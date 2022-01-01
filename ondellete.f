module ondellete
implicit none

contains

    function cwt (d_signal, c_mthr_wlet, scales) result (g)
        use utilities
        use integrals
        
        implicit none
        real, intent(in), dimension(:) :: d_signal, scales
        real, dimension(:,:), allocatable :: g
        
        integer :: n, b, i
        real :: a
        real, dimension(:), allocatable :: t

        interface
!            function signal (t) result (y)
!                real , intent(in) :: t
!                real :: y
!            end function
            
            function c_mthr_wlet (t) result (y)
                real,dimension(:), intent(in) :: t
                real,dimension(:), allocatable :: y 
            end function
        end interface

        n=size(d_signal)
        allocate(t(n))
        call linspace(1.,n+0.,t)
        allocate(g(size(scales), n))

        do i=1, size(scales)
            a=scales(i)
            do b= 1, n
                g(i,b) = (1/sqrt(a)) * trapz1D(d_signal * c_mthr_wlet((t-b+1.0)/a))
            end do
        end do  
    end function
end module 

