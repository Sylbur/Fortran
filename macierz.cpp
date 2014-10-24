#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <ctime>

#define X 10
#define Y 10

void print_for_multiplication(int tab[X][Y]);
void multiplication();
void metoda_lu();

using namespace std;

int main(){

    srand(time(NULL));

    int menu;

    while(1){
        cout << "================================================\n Menu\n================================================\n 1. Mnozenie macierzy 10x10\n 2. Metoda LU\n 0. wyjscie z programu\n Wybierz opcje: ";
        cin >> menu;
        cout << endl;

        switch( menu ){
            case 0:
                return 0;
                break;
            case 1:
                multiplication();
                break;
            case 2:
                metoda_lu();
                break;
            default:
                cout << "Liczba z poza zakresu\n\n";
                break;
        }
    }

    return 0;
}

void print_for_multiplication(int tab[X][Y]){

    int i=0, j=0;

    i=0;
    while(1){
        cout << "| ";

        j=0;
        while(1){
            cout << tab[i][j] << " ";
            j++;
            if(j == Y){
                break;
            }
        }
        cout << "|\n";
        i++;
        if(i == X){
            break;
        }
    }
}

void multiplication(){

    int m1[X][Y], m2[X][Y], w[X][Y], i=0, j=0, k=0, tmp=0;

    i=0;
    while(1){

        j=0;
        while(1){
            m1[i][j] = rand()%10;
            m2[i][j] = rand()%10;
            j++;
            if(j == Y){
                break;
            }
        }
        i++;
        if(i == X){
            break;
        }
    }

     i=0;
    while(1){

        j=0;
        while(1){

            k=0;
            while(1){
                tmp = tmp + m1[i][k] * m2[k][j];
                k++;
                if(k == X){ //POTEM POPRAWIA
                    w[i][j] = tmp;
                    tmp = 0;
                    break;
                }
            }
            j++;
            if(j == Y){
                break;
            }
        }
        i++;
        if(i == X){
            break;
        }
    }

    print_for_multiplication(m1);
    cout << " x\n";
    print_for_multiplication(m2);
    cout << " =\n";
    print_for_multiplication(w);
}

void metoda_lu(){

    cout << "Opcja dostepna w krotce\n\n";
}
