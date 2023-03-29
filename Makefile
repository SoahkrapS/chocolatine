##
## EPITECH PROJECT, 2023
## chocolatine
## File description:
## Makefile
##

NAME    =   chocolatine

NAME_TEST 	=	unit_tests

SRC     =   main.c

SRC_TEST	=   tests/test_main.c

CC      =   gcc

OBJ     =   $(SRC:.c=.o)

OBJ_TEST   	=	$(SRC_TEST:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ)

tests_run: $(OBJ) $(OBJ_TEST)
	$(CC) -o $(NAME_TEST) $(OBJ) $(OBJ_TEST) -lcriterion --coverage

clean:
	rm -f $(OBJ) $(OBJ_TEST)

fclean: clean
	rm -f $(NAME) $(NAME_TEST)
	rm -f *.gc*

re: fclean all

.PHONY: all clean tests_run