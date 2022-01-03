program main
    !test ondellete
    call test_cwt()
    
end program main

subroutine test_cwt()
    use ondellete
    use mother_wavelets
    use utilities
    use csv_file
    
    !use signals_bank
    
    real, dimension(200) :: x ,l   
    real, dimension(200) :: scales
    character (len=*), parameter :: out_file='../out/data.csv'
    character (len=*), parameter :: plot_file='../plots_scripts/plot.plt'
    integer, parameter :: fu = 1
    real, parameter :: p=3.14
    integer :: i
    real, dimension(:,:), allocatable :: coefs, pl_sig

    do i=1, size(x)/2
        x(i)=sin(i*2.6)+sin(i/3.14) + sin(i*0.084)
    end do
    do i=size(x)/2, size(x)
        x(i)= sin(i*0.084)
    end do

    call linspace(1., 80., scales)
    !print*,"CWT method on "
    !print*, "x = ", x
    !print*,'Expected: 9'
    !print*, 'Got: ',trapz1D(x)
    
    print*, 'test cwt'
    print*
    coefs = cwt(x ,mexhat, scales)
    !print*, cwt(x ,mexhat, scales)
    print*


    allocate(pl_sig(3,size(x)))
    call linspace(-size(x)/2.,size(x)/2.,l)
    pl_sig(1,:)=l
    pl_sig(2,:)=x
    pl_sig(3,:)=mexhat(l)
    
    open (unit=2, action = 'write', file = '../out/signal.csv', status='replace')
    call csv_write(2, pl_sig, sep=' ')
    close(2)
    


    open (unit=fu, action = 'write', file = out_file, status='replace')
    call csv_write(fu, abs(coefs), sep=' ')
    close(fu)

 
    call execute_command_line('gnuplot -p '//plot_file )

end subroutine test_cwt