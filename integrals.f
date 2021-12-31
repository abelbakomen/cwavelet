module integrals
    implicit none
contains

function trapz1D(f,step) result (I)
    implicit none
    
    real,dimension(:) :: f
    real ::I,h
    
    real ,optional :: step
    integer :: a,n
    
    if(present(step))then
        h=step
    else
        h=1
    endif
    
    n = size(f)
    I = h*((f(1) + f(n))/2 + sum( f(2:(n-1)) ) )

end function

end module
