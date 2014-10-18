PROGRAM Mnozenie
	integer, parameter :: X = 10;
	integer, parameter :: Y = 10;
	integer :: menu;
	
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
	
	
	
	return
end function