program test_utilities
implicit none

 	!test line spaced
	call test_linspace()
 
end program test_utilities

subroutine test_linspace()
	use utilities

	real, dimension(10) :: x	
	
	
	print*,"Testing linspace "
	print*, "from = ", 0., ', to = ', 1.
	print*,'Expected: 0.0, 0.1, 0.2, 0.3,, 0.4, 0.5, 0.6, 0.7, 0.8, 1.0'
	
	call linspace(0.,1.,x)
	print*, 'Got: ', x
	
end subroutine

