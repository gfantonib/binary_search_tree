NAME = bst.a

CFLAGS = -Wall -Wextra -Werror

#------------------------------------
LIBFT = libft/libft.a
LIBFT_PATH = libft/
#------------------------------------

MK = mkdir -p

OBJECTS_PATH = object

SOURCE_PATH = source/

HEADER = -I include/

SOURCES = \
	bst_breadth.c \
	bst_check_node.c \
	bst_del_utils.c \
	bst_min_max.c \
	bst_nodes.c \
	bst_traversal.c

OBJECTS	:= $(addprefix $(OBJECTS_PATH)/, $(SOURCES:%.c=%.o))

all: $(LIBFT) $(NAME)

$(LIBFT):
	make -C $(LIBFT_PATH)

$(OBJECTS_PATH)/%.o: $(SOURCE_PATH)%.c
	$(MK) $(@D)
	$(CC) $(CFLAGS) -o $@ -c $< $(HEADER)

$(NAME): $(OBJECTS)
	ar -rcT $(NAME) $?
	ar -rcT $(NAME) $(LIBFT)

clean:
	rm -rf $(OBJECTS_PATH) 
	make clean -C $(LIBFT_PATH) --no-print-directory

fclean: clean
	rm -f $(NAME) 
	make fclean -C $(LIBFT_PATH) --no-print-directory

re: fclean all

.PHONY: all clean fclean re bonus