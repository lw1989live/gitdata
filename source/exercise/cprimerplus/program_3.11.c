/* 第3章复习 */
#include <stdio.h>

int main(void)
{
	// 复习5
	//float g; h;  // 变量声明语句错误
	float g, h;
	float tax, rate;
	
	//g = e21;  // g 变量的初始化值不正确
	g = 1.1e21;
	//tax = rate * g;    // rate变量没有初始化
	
	// 复习6
	printf("\n复习6:\n");
	printf(" %d,\n %#x,\n %c,\n %e,\n %c,\n %f,\n %ld,\n %f,\n %a\n", 
			12, 0x3, 'C', 2.34E07, '\040', 7.0, 6L, 6.0f, 0x5.b6p12);
	
	// 复习7
	printf("\n复习7:\n");
	printf(" %#o,\n %Le,\n %c,\n %ld,\n %c,\n %f,\n %#x,\n %d \n", 
			012, 2.9e05L, 's', 100000, '\n', 20.0f, 0x44, -40);
	
	// 复习8
	int imate = 2;
	long shot = 53456;
	char grade = 'A';
	float log = 2.71828;
	
	printf("\n复习8:\n");
	printf("The odds against the %d were %ld to 1.\n", imate, shot);
	printf("a score of %f is not an %c grade.\n", log, grade);
	
	// 复习9
	char ch = '\r';
	ch = 13;
	ch = '\015';
	ch = '\xd';
	
	return 0;
}