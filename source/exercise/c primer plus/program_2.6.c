/* 第二章练习 */
#include <stdio.h>
void jolly(void);
void deny(void);
void br(void);
void ic(void);
void smile(void);
void one_three(void);
void two(void);

int main(void)
{
	// 练习1：打印姓名
	printf("\n练习1：打印姓名\n");
	printf("Gustav Mahler\n");
	printf("Gustav\nMahler\n");
	printf("Gustav ");
	printf("Mahler\n");
	
	// 练习2：打印姓名和地址
	printf("\n练习2：打印姓名和地址\n");
	printf("姓名：/n地址：\n");
	
	// 练习3：把年龄转换成天数
	printf("\n练习3：把年龄转换成天数\n");
	int age_year = 33;
	int age_day = age_year * 365;
	printf("年龄天数为:%d天\n", age_day);
	
	// 练习4：定义jolly()和deny()函数打印
	printf("\n练习4：定义jolly()和deny()函数打印\n");
	jolly();
	jolly();
	jolly();
	deny();
	
	// 练习5：定义br()和ic()函数打印
	printf("\n练习5：定义br()和ic()函数打印\n");
	br();
	printf(",");
	ic();
	printf("\n");
	ic();
	printf(",\n");
	br();
	printf("\n");
	
	// 练习6：打印toes变量的两倍和平方
	printf("\n练习6：打印toes变量的两倍和平方\n");
	int toes = 10;
	printf("toes的值是:  %d, toes的两倍是：  %d,toes的平方是： %d\n", toes, toes * 2, toes * toes);
	
	// 练习7：使用函数打印Smile
	printf("\n练习7：使用函数打印Smile\n");
	smile();
	smile();
	smile();
	printf("\n");
	smile();
	smile();
	printf("\n");
	smile();
	printf("\n");
	
	// 练习8：定义ont_three()函数调用two()函数
	printf("\n练习8：定义ont_three()函数调用two()函数\n");
	printf("Starting now:\n");
	one_three();
	printf("done!\n");
	
	return 0;
}

void jolly(void)
{
	printf("For he's a jolly good fello!\n");
}

void deny(void)
{
	printf("Which nobody can deny!\n");
}

void br(void)
{
	printf("Brazil, Russia");
}

void ic(void)
{
	printf("India, China");
}

void smile(void)
{
	printf("Smile!");
}

void one_three(void)
{
	printf("one\n");
	two();
	printf("three\n");
}

void two(void)
{
	printf("two\n");
}