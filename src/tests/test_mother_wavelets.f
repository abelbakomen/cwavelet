program main
    !mexican hat
    call test_mex_hat()
    !call test_symlet()
        
end program main

subroutine test_mex_hat()
    use mother_wavelets
    implicit none
        
    real, dimension(5) :: t     
    t = (/-2., -1., 0., 1., 2. /)
    
    print*
    print*, 'Testing Morlet function on t= ',t
    print*, 'Expected result: ','-0.4, 0.0, 1.0, 0.0, -0.4' 
    print*, 'Obtained result: ', mexhat(t)
    print*
end subroutine test_mex_hat

subroutine test_symlet()
    use mother_wavelets
    implicit none
        
    real, dimension(5) :: t     
    t = (/-2., -1., 0., 1., 2. /)
    
    print*
    print*, 'Testing symlet function on t= ',t
    print*, 'Expected result: ','' 
    print*, 'Obtained result: ',symlet(t)
    print*
end subroutine test_symlet
