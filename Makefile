NAME 		= libasm.a
SRC 		= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJ 		= ${SRC:.s=.o}
BONUS		= ft_atoi_base_bonus.s
BONUS_OBJ	= ${BONUS:.s=.o}
NASM 		= nasm
NASM_FLAGS 	= -f elf64 -g

AR 		= ar rc
RM 		= rm -f

GREEN		:= "\033[0;32m"
CYAN		:= "\033[0;36m"
RESET		:= "\033[0m"

%.o: %.s
	${NASM} ${NASM_FLAGS} -o ${@} ${@:.o=.s}

${NAME}: ${OBJ}
	${AR} ${NAME} ${OBJ}
	@echo ${GREEN}"Compiled '${NAME}' with success" ${RESET}

all: ${NAME}

bonus: ${NAME} ${BONUS_OBJ}
	${AR} ${NAME} ${BONUS_OBJ}
	@touch bonus
	@echo ${GREEN}"Compiled 'bonus' with success" ${RESET}

clean:
	${RM} ${OBJ} ${BONUS_OBJ} bonus
	@echo ${CYAN}"Cleaned objects with success"${RESET}

fclean: clean
	${RM} ${NAME}
	@echo ${CYAN}"Removed '${NAME}' with success"${RESET}

re: fclean all

.PHONY: all clean fclean re
