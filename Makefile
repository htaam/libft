# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatias <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/20 12:26:37 by tmatias           #+#    #+#              #
#    Updated: 2021/03/10 11:34:11 by tmatias          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libft.a 
CC= gcc
CFLAGS= -Wall -Werror -Wextra
SRC = ft_memset.c		\
		ft_bzero.c		\
		ft_memcpy.c		\
		ft_memccpy.c		\
		ft_memmove.c 	\
		ft_memchr.c		\
		ft_memcmp.c		\
		ft_strlen.c		\
		ft_isalpha.c 	\
		ft_isdigit.c		\
		ft_isalnum.c		\
		ft_isascii.c		\
		ft_isprint.c		\
		ft_toupper.c		\
		ft_tolower.c		\
		ft_strchr.c		\
		ft_strrchr.c		\
		ft_strncmp.c		\
		ft_strlcpy.c		\
		ft_strlcat.c		\
		ft_strnstr.c		\
		ft_atoi.c		\
		ft_calloc.c		\
		ft_strdup.c		\
		ft_substr.c		\
		ft_strjoin.c 	\
		ft_strtrim.c		\
		ft_split.c		\
		ft_itoa.c		\
		ft_strmapi.c		\
		ft_putchar_fd.c	\
		ft_putstr_fd.c	\
		ft_putendl_fd.c	\
		ft_putnbr_fd.c
SRC_BONUS = ft_lstnew.c			\
		ft_lstadd_front.c	\
		ft_lstsize.c		\
		ft_lstlast.c		\
		ft_lstadd_back.c	\
		ft_lstclear.c		\
		ft_lstdelone.c		\
		ft_lstiter.c		\
		ft_lstmap.c			\
		$(SRC)
OBJ= $(SRC:%.c=%.o)
OBJ_BONUS = $(SRC_BONUS:%.c=%.o)
AR= ar -rcs

all: $(NAME)

$(NAME):$(OBJ) libft.h
	$(AR) $(NAME) $(OBJ)
BONUS:

$(OBS): $(SRC)
	$(CC)  $(CFLAGS) -c $< -o $@  -I.

clean:
	rm -rf $(OBJ) $(OBJ_BONUS)

fclean: clean
	rm -rf $(NAME)
re: fclean all

$(NAME_BONUS): $(OBJ_BONUS) libft.h
	$(AR) $(NAME) $(OBJ_BONUS)

bonus: $(OBJ_BONUS)
	$(AR) $(NAME) $(OBJ_BONUS)

