/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmatias <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/08 15:40:40 by tmatias           #+#    #+#             */
/*   Updated: 2021/03/31 12:23:18 by tmatias          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	count_num(long long int n, char *base)
{
	long long int	a;

	a = 1;
	while (n / (ft_strlen(base)))
	{
		n = (n / (ft_strlen(base)));
		a++;
	}
	return (a);
}

static char	convert_char(long long int n, char *base)
{
	return (base[n]);
}

static void	create_result(long long int a, long long int n
						, char *result, char *base)
{
	long long int	b;
	long long int	is_nega;

	is_nega = 0;
	if (n < 0)
	{
		is_nega = 1;
		result[0] = '-';
		n = n * (-1);
	}
	b = a - 1;
	while (b > -1)
	{
		result[b] = convert_char(n % ft_strlen(base),base);
		n = n / ft_strlen(base);
		b--;
		if (b == 0 && is_nega == 1)
			break ;
	}
	result[a] = 0;
}

char	*ft_itoa_base(long long int n, char *base)
{
	char				*result;
	long long int		a;
	
	a = count_num(n, base);
	if (n < 0)
		a++;
	result = malloc(sizeof(char) * (a + 1));
	if (!(result))
		return (NULL);
	create_result(a, n, result, base);
	return (result);
}

char	*ft_itoa(long long int n)
{
	return (ft_itoa_base(n, "0123456789"));
}
