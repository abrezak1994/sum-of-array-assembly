#include <stdio.h>
#include <stdlib.h>


void main(){
	int arr[9] = {8,1,4,5,6,3,2,9,7}; //defined the array
	int i=0,k=9,sum=0; //define index,array size and sum values	
	do{
		sum += arr[i]; //add sum to current index of array
		i++; //increment index
	}while(i<k); //our condition
	printf("%d",sum); //print the sum
}
