# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jubarbie <jubarbie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/10/30 16:51:35 by jubarbie          #+#    #+#              #
#    Updated: 2016/04/23 09:48:56 by jubarbie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=gcc
CFLAGS=-I Includes -Wall -Wextra -Werror
SRC=	Sources/main.c
OBJ=$(SRC:.c=.o)
NAME=hotrace

$(NAME): $(OBJ)
	$(CC) -o $@ $^

all: $(NAME)
	
%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all
