# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: mkootstr <mkootstr@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2022/09/14 13:59:06 by mkootstr      #+#    #+#                  #
#    Updated: 2022/09/15 10:56:16 by mkootstr      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = pipex
SRC_FILES = 	src/pipex.c\
				src/parse.c\
				src/errorcheck.c\
				src/errorcheck2.c

UTILS_FILES = 	utils/ft_append.c\
				utils/ft_calloc.c\
				utils/ft_split.c\
				utils/ft_strdup.c\
				utils/ft_strlen.c\
				utils/ft_strnstr.c

CFLAGS = -Wall -Wextra -Werror
HEADER_FILES = src/pipex.h utils/utils.h

PIPEX = $(SRC_FILES:.c=.o)
UTILS = $(UTILS_FILES:.c=.o)
OBJ = $(PIPEX) $(UTILS)
all: $(NAME)


$(NAME): $(OBJ)
	gcc $(CFLAGS) -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)
fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re