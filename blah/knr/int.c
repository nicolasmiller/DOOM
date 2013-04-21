#include <stdio.h>

main() {
	long int i = 0;
	for(i = 0; i <= 65535; i++) {
		printf("%d\n", (short int) i);
	}
}
