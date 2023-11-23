/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



unsigned char work_p_2688103174_sub_555418863048671952_2208071327(char *t1, unsigned char t2, unsigned char t3)
{
    char t5[8];
    unsigned char t0;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;

LAB0:    t6 = (t5 + 4U);
    *((unsigned char *)t6) = t2;
    t7 = (t5 + 5U);
    *((unsigned char *)t7) = t3;
    t8 = (t1 + 1168U);
    t9 = *((char **)t8);
    t10 = (t2 - 0);
    t11 = (t10 * 1);
    t12 = (t11 * 2U);
    t13 = (t3 - 0);
    t14 = (t13 * 1);
    t15 = (t12 + t14);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t8 = (t9 + t17);
    t18 = *((unsigned char *)t8);
    t0 = t18;

LAB1:    return t0;
LAB2:;
}

unsigned char work_p_2688103174_sub_548075648222875806_2208071327(char *t1, unsigned char t2, unsigned char t3)
{
    char t5[8];
    unsigned char t0;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;

LAB0:    t6 = (t5 + 4U);
    *((unsigned char *)t6) = t2;
    t7 = (t5 + 5U);
    *((unsigned char *)t7) = t3;
    t8 = (t1 + 1288U);
    t9 = *((char **)t8);
    t10 = (t2 - 0);
    t11 = (t10 * 1);
    t12 = (t11 * 2U);
    t13 = (t3 - 0);
    t14 = (t13 * 1);
    t15 = (t12 + t14);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t8 = (t9 + t17);
    t18 = *((unsigned char *)t8);
    t0 = t18;

LAB1:    return t0;
LAB2:;
}

unsigned char work_p_2688103174_sub_844862721510222423_2208071327(char *t1, unsigned char t2)
{
    char t4[8];
    unsigned char t0;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;

LAB0:    t5 = (t4 + 4U);
    *((unsigned char *)t5) = t2;
    t6 = (t1 + 1408U);
    t7 = *((char **)t6);
    t8 = (t2 - 0);
    t9 = (t8 * 1);
    t10 = (1U * t9);
    t11 = (0 + t10);
    t6 = (t7 + t11);
    t12 = *((unsigned char *)t6);
    t0 = t12;

LAB1:    return t0;
LAB2:;
}


extern void work_p_2688103174_init()
{
	static char *se[] = {(void *)work_p_2688103174_sub_555418863048671952_2208071327,(void *)work_p_2688103174_sub_548075648222875806_2208071327,(void *)work_p_2688103174_sub_844862721510222423_2208071327};
	xsi_register_didat("work_p_2688103174", "isim/mux_21_isim_beh.exe.sim/work/p_2688103174.didat");
	xsi_register_subprogram_executes(se);
}
