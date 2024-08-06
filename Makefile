# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: belamiqu <belamiqu@student.42urduliz.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/20 15:26:23 by belamiqu          #+#    #+#              #
#    Updated: 2024/02/12 16:41:28 by belamiqu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#SETUP
NAME		=	pipex
CC			=	gcc
FLAGS		=	-Wall -Wextra -Werror
RM			=	rm -rf

#FILES AND PATH
HEADER_SRCS	=	pipex.h 
HEADER_DIR	=	includes/
HEADER		=	$(addprefix $(HEADER_DIR), $(HEADER_SRCS))

MPATH_SRCS	=	pipex.c error.c free.c childs.c 
MPATH_DIR	=	mandatory/
MPATH		=	$(addprefix $(MPATH_DIR), $(MPATH_SRCS))
OBJ_M		=	$(MPATH:.c=.o)

FUNC_SRCS	=	ft_split.c ft_strjoin.c ft_strncmp.c ft_strlen.c ft_strdup.c
FUNC_DIR	=	functions/
FUNC 		=	$(addprefix $(FUNC_DIR), $(FUNC_SRCS))\
				
OBJ_F		=	$(FUNC:.c=.o)

#COMMANDS
%.o: %.c $(HEADER) Makefile
				@${CC} ${FLAGS} -c $< -o $@

$(NAME):		$(OBJ_F) $(OBJ_M)
				$(CC) $(FLAGS) $(OBJ_F) $(OBJ_M) -o $(NAME)
				@echo -e "$(GREEN)$(NAME) created!$(DEFAULT)"


all:			$(NAME)

clean:
				$(RM) $(OBJ_M)
				$(RM) $(OBJ_F)
				@echo -e "$(YELLOW)object files deleted!$(DEFAULT)"

fclean:			clean
				$(RM) $(NAME)
				@echo -e "$(RED) deleted!$(DEFAULT)"

re:				fclean all

.PHONY:		all clean fclean re

#COLORS
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
DEFAULT = \033[0m