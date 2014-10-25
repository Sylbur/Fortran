PROGRAM Mnozenie
	integer, parameter :: X = 10;
	integer, parameter :: Y = 10;
	integer :: menu;
    real :: n;

	do
		write (*,*) '================================================'
    	write (*,*) ' Menu'
    	write (*,*) '================================================'
    	write (*,*) ' 1. Mnozenie macierzy 10x10'
    	write (*,*) ' 2. wyjscie z programu'
        write (*,*) ' 0. wyjscie z programu'
    	write (*,*) ' Wybierz opcje:'
    	read(*,*) menu
		
		select case (menu)
			case (1)
               	n=func_multiplication();
			case (2)
                n=func_metoda_lu();
			case (0)
				exit
			case default
				print *, "Liczba z poza zakresu"
		end select
	end do

END

real function func_multiplication ( ) 
	implicit none
    
	integer, parameter :: X = 10, Y = 10;
	integer :: m1(10,10), m2(10,10), w(10,10), i=0, j=0, k=0, tmp=0;
	real :: n;
!!	call init_random_seed() ! see example of random_seed
!!	call random_number(w)

	i=1;
	do
		j=1;
		do
			m1(i,j) = 1;
			m2(i,j) = 1;
			j=j+1;
			if(j == Y) exit
		end do

		i=i+1;
		if(i == X) exit
	end do
    
!    print *, m1(2,2)

	i=1;
	do
		j=1;
		do
			k=1;
			do
				tmp = tmp + m1(i,k) * m2(k,j);
				k=k+1;
				if(k == X) then !POTEM POPRAWIC
					w(i,j) = tmp;
					tmp = 0;
					exit
				end if
			end do

			j=j+1;
			if(j == Y) exit
		end do

		i=i+1;
		if(i == X) exit
	end do

!	n=func_multiplication_print ( m1 );
    print *, "Do dokonczenia"

end function func_multiplication

real function func_multiplication_print ( tab )
	implicit none
	
	integer, parameter :: X = 10, Y = 10;
	integer :: tab(10,10), i=0, j=0;

	i=1;
	do
		print *, "| "
		j=1;
		do
			print *, tab(i,j)
            print *, " "
			j=j+1;
			if(j == Y) exit
		end do
		
		print *, "|"
		i=i+1;
		if(i == X) exit
	end do

end function func_multiplication_print

real function func_metoda_lu ( )
	implicit none
	
	print *, "Opcja do zrobienia"

end function func_metoda_lu