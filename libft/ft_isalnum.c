/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abooster <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/08 17:04:54 by abooster          #+#    #+#             */
/*   Updated: 2019/04/16 14:05:33 by abooster         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_isalnum(int ch)
{
	if (('0' <= ch && ch <= '9') ||
			(65 <= ch && ch <= 90) ||
			(97 <= ch && ch <= 122))
		return (1);
	else
		return (0);
}
