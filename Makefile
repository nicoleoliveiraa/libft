NAME = libft.a
INCLUDE = libft.h
SRCS = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c \
		ft_isprint.c ft_tolower.c ft_toupper.c ft_strlcpy.c \
		ft_strlen.c ft_strncmp.c ft_memset.c ft_memcpy.c ft_strlcat.c \
		ft_strchr.c ft_strrchr.c ft_memchr.c ft_memcmp.c
OBJS = $(SRCS:.c=.o)
CC = gcc
CFLAGS = -Wall -Wextra -Werror -I.
RM = rm -f

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean: 
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean $(NAME)

.PHONY: all clean fclean re
