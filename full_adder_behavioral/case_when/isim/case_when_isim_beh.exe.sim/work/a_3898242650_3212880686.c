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
static const char *ng0 = "/media/fazel/4600AC1600AC0ECD/Uni/CADS/full_adder_behavioral/case_when/case_when.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3898242650_3212880686_p_0(char *t0)
{
    char t6[16];
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    int t17;
    int t18;
    int t19;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4000);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t12 = ((IEEE_P_2592010699) + 4000);
    t8 = xsi_base_array_concat(t8, t11, t12, (char)97, t1, t6, (char)99, t10, (char)101);
    t13 = (t0 + 1968U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t15 = (1U + 1U);
    t16 = (t15 + 1U);
    memcpy(t13, t8, t16);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 5478);
    t17 = xsi_mem_cmp(t1, t2, 3U);
    if (t17 == 1)
        goto LAB3;

LAB7:    t7 = (t0 + 5481);
    t18 = xsi_mem_cmp(t7, t2, 3U);
    if (t18 == 1)
        goto LAB4;

LAB8:    t9 = (t0 + 5484);
    t19 = xsi_mem_cmp(t9, t2, 3U);
    if (t19 == 1)
        goto LAB4;

LAB9:    t13 = (t0 + 5487);
    t20 = xsi_mem_cmp(t13, t2, 3U);
    if (t20 == 1)
        goto LAB4;

LAB10:    t21 = (t0 + 5490);
    t23 = xsi_mem_cmp(t21, t2, 3U);
    if (t23 == 1)
        goto LAB5;

LAB11:    t24 = (t0 + 5493);
    t26 = xsi_mem_cmp(t24, t2, 3U);
    if (t26 == 1)
        goto LAB5;

LAB12:    t27 = (t0 + 5496);
    t29 = xsi_mem_cmp(t27, t2, 3U);
    if (t29 == 1)
        goto LAB5;

LAB13:
LAB6:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3344);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 3408);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t1 = (t0 + 3264);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(50, ng0);
    t30 = (t0 + 3344);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    *((unsigned char *)t34) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t30);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3408);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3344);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 3408);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 3344);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 3408);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB14:;
}


extern void work_a_3898242650_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3898242650_3212880686_p_0};
	xsi_register_didat("work_a_3898242650_3212880686", "isim/case_when_isim_beh.exe.sim/work/a_3898242650_3212880686.didat");
	xsi_register_executes(pe);
}
