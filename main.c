/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gfantoni <gfantoni@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/26 15:42:36 by gfantoni          #+#    #+#             */
/*   Updated: 2024/03/06 10:54:51 by gfantoni         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "include/bst.h"

int	main(void)
{
	t_bst	*tree1;
	int	was_inserted;

	tree1 = NULL;
	was_inserted = FALSE;
	int to_insert[] = {7, 2, 11, 5, 3, 19, 1, 8, 4};
	for (int i = 0; i < 9; i++) tree1 = bst_insert(tree1, to_insert[i], &was_inserted);
	bst_post_order(tree1);
	ft_printf("\n");
	bst_free_all(tree1);

}
