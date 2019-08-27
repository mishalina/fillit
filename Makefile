# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abooster <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/06/19 13:41:09 by abooster          #+#    #+#              #
#    Updated: 2019/06/19 13:41:24 by abooster         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

CFLAGS = -Wall -Werror -Wextra

SRC = main.c read.c map.c placeit.c solve.c validate.c tools.c strtrimalt.c

LIBFT_DIR = libft
LIBS = libft/libft.a

OBJ = $(SRC:.c=.o)

HEADERS = fillit.h

all: $(NAME)

$(LIBS):
	make -C $(LIBFT_DIR)

$(NAME): $(SRC) $(LIBS)
	gcc $(CFLAGS) -I $(HEADERS) -o $(NAME) $(SRC) $(LIBS)

clean:
	$(MAKE) -C $(LIBFT_DIR) clean
	rm -f $(OBJ)

fclean: clean
	$(MAKE) -C $(LIBFT_DIR) fclean
	rm -f $(NAME)

re: fclean all
