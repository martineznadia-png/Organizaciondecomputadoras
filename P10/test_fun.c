#include <stdio.h> 

extern int sumar(int, int);

int main()
{
    int num1 =10, num2 =15;
    int resultado =0;

    resultado= sumar(num1, num2);
    printf("\nEl resultado de la suma es: %d",resultado);

    return 0;
}