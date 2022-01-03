program main
    !trapez method on 1D array
    call test_trapez()
    
end program main

subroutine test_trapez()
    use integrals
    real, dimension(8) :: x    
    
    x = (/1, 6, -3, 2, -8, 2, 9, 1 /)
    print*,"Testing trapez method on "
    print*, "x = ", x
    print*,'Expected: 9'
    print*, 'Got: ',trapz1D(x)
end subroutine test_trapez
