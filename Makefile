NAME		= libasm.a
SRC		= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJ		= $(SRC:.s=.o)
NASM		= nasm
NASM_FLAGS	= -f elf64
NASM_OPTS	= -g

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $@ $^

%.o: %.s
	$(NASM) $(NASM_FLAGS) $(ASM_SYNTAX) $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
