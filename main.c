#include <stdio.h>
#include <string.h>

size_t ft_strlen(const char *str);
char *ft_strcpy(char *dest, const char *src);

int main() {
    printf("Test 1: Comparing strlen and ft_strlen\n");

    const char *test_str = "Hello, World!";

    size_t len = strlen(test_str);
    printf("ft_strlen result: %zu\n", len);
    len = ft_strlen(test_str);
    printf("strlen result: %zu\n", len);

    printf("\nTest 2: Comparing strcpy and ft_strcpy\n");
    
    char src1[] = "Hello";
    char dest1[20];
    char dest2[20];

    strcpy(dest1, src1);
    printf("strcpy result: %s\n", dest1);
    ft_strcpy(dest2, src1);
    printf("ft_strcpy result: %s\n", dest2);

    char src2[] = "";
    strcpy(dest1, src2);
    printf("\nstrcpy result with empty string: %s\n", dest1);
    ft_strcpy(dest2, src2);
    printf("ft_strcpy result with empty string: %s\n", dest2);

    char src3[] = "A very long string to test.";
    strcpy(dest1, src3);
    printf("\nstrcpy result with long string: %s\n", dest1);
    ft_strcpy(dest2, src3);
    printf("ft_strcpy result with long string: %s\n", dest2);

    return 0;
}
