module mother_wavelets
	implicit none
contains

function morlet(t) result(f)
	real, dimension(:), intent(in) :: t
	real, dimension(:), allocatable :: f 
	f=t
end function


function haar(t) result(f)
	real, dimension(:), intent(in) :: t
	real, dimension(:), allocatable :: f 
	f=t
end function


function Daubechie1(t) result(f)
	real, dimension(:), intent(in) :: t
	real, dimension(:), allocatable :: f 
	f=t
end function


function symlet(t) result(f)
	real, dimension(:), intent(in) :: t
	real, dimension(:), allocatable :: f 
	f=t
end function


function mexhat(t) result(f)
	real, dimension(:), intent(in) :: t
	real, dimension(:), allocatable :: f 
	
	f= (1-t*t)*exp(-(t*t)/2)
	
end function

end module

