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
static const char *ng0 = "/media/fazel/4600AC1600AC0ECD/Uni/CADS/codes/shift_reg/shift_reg.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1486221262_3212880686_p_0(char *t0)
{
    char t17[16];
    char t18[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(26, ng0);
    t3 = xsi_get_transient_memory(8U);
    memset(t3, 0, 8U);
    t7 = t3;
    memset(t7, (unsigned char)2, 8U);
    t8 = (t0 + 3768);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t6 = *((unsigned char *)t4);
    t1 = (t0 + 1832U);
    t7 = *((char **)t1);
    t13 = (8 - 1);
    t14 = (7 - t13);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t7 + t16);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t18 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 7;
    t11 = (t10 + 4U);
    *((int *)t11) = 1;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t19 = (1 - 7);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t20;
    t8 = xsi_base_array_concat(t8, t17, t9, (char)99, t6, (char)97, t1, t18, (char)101);
    t20 = (1U + 7U);
    t21 = (8U != t20);
    if (t21 == 1)
        goto LAB10;

LAB11:    t11 = (t0 + 3768);
    t12 = (t11 + 56U);
    t22 = *((char **)t12);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t8, 8U);
    xsi_driver_first_trans_fast(t11);
    goto LAB6;

LAB10:    xsi_size_not_matching(8U, t20, 0);
    goto LAB11;

}

static void work_a_1486221262_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(33, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3832);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3688);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1486221262_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1486221262_3212880686_p_0,(void *)work_a_1486221262_3212880686_p_1};
	xsi_register_didat("work_a_1486221262_3212880686", "isim/tb_shift_reg_isim_beh.exe.sim/work/a_1486221262_3212880686.didat");
	xsi_register_executes(pe);
}
