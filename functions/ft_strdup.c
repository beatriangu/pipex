/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: belamiqu <belamiqu@student.42urduliz.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/16 14:51:27 by belamiqu          #+#    #+#             */
/*   Updated: 2024/02/10 13:07:46 by belamiqu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/pipex.h"

char	*ft_strdup(const char *src)
{
	char	*cp;
	size_t	i;

	i = 0;
	cp = (char *)malloc(ft_strlen(src) + 1);
	if (!cp)
		return (NULL);
	while (src[i])
	{
		cp[i] = src[i];
		i++;
	}
	cp[i] = '\0';
	return (cp);
}

