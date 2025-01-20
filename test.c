#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Prototype de ta fonction

int main(int argc, char **argv) {
	int	res;
	char	*test = "  grdgdg \t\v\f -123552a";

	res = atoi(test);

	printf("Test =  %d\n", res);
	return 0;
}
