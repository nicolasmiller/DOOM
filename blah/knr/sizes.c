#include <stdio.h>
#include <stdint.h>

int main() {
	printf("short int: %ld\n", sizeof(int));
	printf("int: %ld\n", sizeof(int));
	printf("unsigned int: %ld\n", sizeof(unsigned int));
	printf("long int: %ld\n", sizeof(long int));
	printf("long long int: %ld\n", sizeof(long long int));
	printf("float: %ld\n", sizeof(float));
	printf("double: %ld\n", sizeof(double));
	printf("char: %ld\n", sizeof(char));
	printf("int_fast16_t: %ld\n", sizeof(int_fast16_t));
	printf("char *: %ld\n", sizeof(char *));
	return 0;
}
