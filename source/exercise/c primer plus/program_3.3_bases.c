/* bases.c -- 以十进制、八进制、十六进制打印十进制数100 */
#include <stdio.h>
int main(void)
{
	int x = 100;
	
	printf("dec = %d; octal = %o; hex = %x\n", x, x, x);
	printf("dec = %d; octal = %#o; hex = %#x\n", x, x, x);
	
	// 声明其他整数类型
	long int estine;
	long jonns;
	short int erns;
	short ribs;
	unsigned int s_count;
	unsigned players;
	unsigned long headcount;
	unsigned short yesvotes;
	long long ago;
	
	/* toobig.c -- 超出系统允许的最大int值 */
	int i = 2147483647;
	unsigned int j = 4294967295;
	printf("%d %d %d\n", i, i + 1, i + 2);
	printf("%u %u %u\n", j, j + 1, j + 2);
	
	return 0;
}