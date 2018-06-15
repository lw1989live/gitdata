#include <stdio.h>

int main(void) /*一个简单的C程序*/
{
	int num;   /*定义一个名为num的变量*/
	num = 1;   /*为num赋一个值*/
	
	printf("I am a simple "); /* 使用printf()函数*/
	printf("computer.\n");
	printf("My favorite number is %d because it is first.\n",num);
	
	/*把2音寻(测水深的单位) 转换成英尺*/
	int feet, fathoms;
	
	fathoms = 2;
	feet = 6 * fathoms;
	printf("There are %d feet in %d fathoms!\n", feet, fathoms);
	
	return 0;
}