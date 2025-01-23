#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int ft_atoi_base(char *str, char *base);

int main(int argc, char **argv) {
	int	res;
	char	*test = "123552";
	char	*base = "01233689";

	res = ft_atoi_base(test, base);

	printf("Test =  %d\n", res);
	return 0;
}
