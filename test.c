#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int ft_atoi_base(char *str, char *base);

int main(int argc, char **argv) {
	int	res;
	char	*test = "ff";
	char	*base = "0123456789abcdef";

	res = ft_atoi_base(test, base);


	printf("Test =  %d\n", res);
	res = atoi(test);
	printf("Atoi = %d\n", res);
	return 0;
}
