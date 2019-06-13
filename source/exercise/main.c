/* main.c - the complete listing */
/* 0 版权/许可证 */
/* 1 包含 */
#include <stdio.h>     /* 提供 FILE、stdin、stdout、stderr和fprint()函数系列 */
#include <stdlib.h>    /* 提供 malloc()、calloc()和realloc() */
#include <unistd.h>    /* 提供 EXIT_FAILURE、EXIT_SUCCESS */
#include <libgen.h>    /* 提供 basename() 函数 */
#include <errno.h>     /* 定义外部 errno 变量及其可以接受的所有值 */
#include <string.h>    /* 提供 memcpy()、memset()、strlen()函数系列 */
#include <getopt.h>    /* 提供外部 optarg、opterr、optind和getopt() 函数  */
#include <sys/types.h> /* 类型定义快捷方式,如uint32_t和uint64_t */
/* 2 定义 */
#define OPTSTR "vi:o:f:h" /* 程序推荐的命令行开关 */
#define USAGE_FMT "%s [-v] [-f hexflag] [-i inputfile] [-o outputfile] [-h]" /* usage()函数要使用的printf()风格格式字符串 */
#define ERR_FOPEN_INPUT "fopen(input, r)"
#define ERR_FOPEN_OUTPUT "fopen(output, w)"
#define ERR_DO_THE_NEEDFUL "do_the_needful blew up"
#define DEFAULT_PROGNAME "george"
/* 3 外部声明 */
extern int erron;
extern char *optarg;
extern int opterr, optind;
/* 4 类型定义 */
typedef struct {
  int	verbose;
  uint32_t	flags;
  FILE	*input;
  FILE	*output;
} options_t;
/* 5 全局变量声明 */
int dumb_global_variable = -11;	/* 请尽量不要使用全局变量 */
/* 6 函数原型 */
void usage(char *progname, int opt);
int do_the_nedful(options_t *options);

int main(int argc, char *argv[]) {
    /* 7 命令行解析 */
    int opt;
    options_t options = { 0, 0x0, stdin, stdout };

    opterr = 0;

    while ((opt = getopt(argc, argv, OPTSTR)) != EOF)
        switch(opt) {
	    case 'i':
	        if (!(options.input = fopen(optarg, "r")) ){
		    perror(ERR_FOPEN_INPUT);
		    exit(EXIT_FAILURE);
		    /* NOTREACHED */
		}
		break;

	    case 'o':
	    	if (!(options.output = fopen(optarg, "w")) ){
		    perror(ERR_FOPEN_OUTPUT);
		    exit(EXIT_FAILURE);
		    /* NOTREACHED */
		}
		break;

	    case 'f':
	        options.flags = (uint32_t)strtoul(optarg, NULL, 16);
		break;

	    case 'v':
	        options.verbose += 1;
		break;

	    case 'h':
	    default:
	        usage(basename(argv[0]), opt);
		/* NOTREACHED */
		break;
	}

	if (do_the_needful(&options) != EXIT_SUCCESS) {
	    perror(ERR_DO_THE_NEEDFUL);
	    exit(EXIT_FAILURE);
	    /* NOTREACHED */
	}

	return EXIT_SUCCESS;
}

/* 8 函数声明 */
void usage(char *progname, int opt) {
    fprintf(stderr, USAGE_FMT, progname?progname:DEFAULT_PROGNAME);
    exit(EXIT_FAILURE);
    /* NOTREACHED */
}

int do_the_needful(options_t *options) {
    
    if (!options) {
    	errno = EINVAL;
	return EXIT_FAILURE;
    }

    if (!options->input || !options->output) {
    	errno = ENOENT;
	return EXIT_FAILURE;
    }

    /* XXX do needful stuff */

    return EXIT_SUCCESS;
}

/* 关于代码注释
 * 与其使用注释，不如使用有意义的函数名和变量名
 * 如果必须写注释，不要写关于代码正在做什么，
 * 相反，写下代码为什么要这样写。
 */

