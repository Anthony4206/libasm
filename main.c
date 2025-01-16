#include <stdio.h>
#include <string.h>

extern size_t	ft_strlen(const char *s);
extern char	*ft_strcpy(char *dest, const char *src);
extern int	ft_strcmp(const char *s1, const char *s2);

int	main(int argc, char **argv) {
	char	*msg;
	int	len;
	char	my_cpy[50];
	char	*adr_cpy;

	msg = "Hellooo World!!!";
	len = ft_strlen(msg);
	printf("Length: %d\n", len);

	adr_cpy = strcpy(my_cpy, msg);
        printf("The copy: %s\n", my_cpy);
        printf("The address copy: %p\n", (void*)adr_cpy);
        printf("The copy by the adr_ret: %s\n", adr_cpy);

	adr_cpy = ft_strcpy(my_cpy, msg);
	printf("The copy: %s\n", my_cpy);
        printf("The address copy: %p\n", (void*)adr_cpy);
        printf("The copy by the adr_ret: %s\n", adr_cpy);

	int	cmp_res;
	char	*s1;
	char	*s2;

	s1 = "chaine 1";
	s2 = "chaine 2";

	cmp_res = ft_strcmp(s1, s2);
	printf("Negative cmp: %d", cmp_res);
	cmp_res = strcmp(s1, s2);
	printf("Negative cmp: %d", cmp_res)


        s1 = "chaine 1";
        s2 = "chaine 2";
        cmp_res = ft_strcmp();
        printf("Negative cmp: %d", cmp_res);
	s1 = "chaine 1";
        s2 = "chaine 2";
        cmp_res = ft_strcmp();
        printf("Negative cmp: %d", cmp_res);
	s1 = "chaine 1";
        s2 = "chaine 2";
        cmp_res = ft_strcmp();
        printf("Negative cmp: %d", cmp_res);

	return (0);
}
