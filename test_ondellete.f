program main
	!test ondellete
	call test_cwt()
	
end program main

subroutine test_cwt()
	use ondellete
	use mother_wavelets
	use utilities
	
	!use signals_bank
	
	real, dimension(5) :: x	
	real, dimension(5) :: scales
	
	x = (/1, 2, 3, 2, 1/)
	call linspace(0.0001, 1.0, scales)
	!print*,"CWT method on "
	!print*, "x = ", x
	!print*,'Expected: 9'
	!print*, 'Got: ',trapz1D(x)
	
	print*, 'test cwt'
	print*
	print*, cwt(x ,mexhat, scales)
	print*
	
end subroutine test_cwt

