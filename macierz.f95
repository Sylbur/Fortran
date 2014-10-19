PROGRAM Mnozenie
	integer, parameter :: X = 10;
	integer, parameter :: Y = 10;
	integer :: menu, n;
	
	do
		write (*,*) '================================================'
    	write (*,*) ' Menu'
    	write (*,*) '================================================'
    	write (*,*) ' 1. Mnozenie macierzy 10x10'
    	write (*,*) ' 2. wyjscie z programu'
    	write (*,*) ' Wybierz opcje:'
    	read(*,*) menu
		
		select case (menu)
			case (1)
				print *, "Do zrobienia"
               !n=multiplication( );
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!    
    i=0;
    do
		j=0;
    	do
            m1(i,j) = 1;
            m2(i,j) = 1;
            j=j+j;
            if(j == Y) exit
        end do
        
        i=i+1;
        if(i == X) exit
    end do
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
			case (2)
				exit
			case default
				print *, "Liczba z poza zakresu"
		end select
	end do

END

real function print_for_multiplication( tab )
	
	
	
	return
end function

real function multiplication( )

	integer :: m1(10,10), m2(10,10), w(10,10), i=0, j=0, k=0, tmp=0;
	
!	call init_random_seed() ! see example of random_seed
!	call random_number(w)
	
!	print *, w(3,5)
    
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	
	return
end function