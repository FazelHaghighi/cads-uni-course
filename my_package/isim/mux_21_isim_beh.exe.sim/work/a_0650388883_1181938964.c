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
static const char *ng0 = "/media/fazel/4600AC1600AC0ECD/Uni/CADS/codes/my_package/mux_21.vhd";
extern char *WORK_P_2688103174;

unsigned char work_p_2688103174_sub_548075648222875806_2208071327(char *, unsigned char , unsigned char );
unsigned char work_p_2688103174_sub_555418863048671952_2208071327(char *, unsigned char , unsigned char );
unsigned char work_p_2688103174_sub_844862721510222423_2208071327(char *, unsigned char );


static void work_a_0650388883_1181938964_p_0(char *t0)
{
    int t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned char t27;
    char *t28;
    char *t29;
    unsigned char t30;
    unsigned char t31;
    unsigned char t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (2 - 1);
    t2 = (t0 + 5049);
    *((int *)t2) = 0;
    t3 = (t0 + 5053);
    *((int *)t3) = t1;
    t4 = 0;
    t5 = t1;

LAB2:    if (t4 <= t5)
        goto LAB3;

LAB5:    t2 = (t0 + 3104);
    *((int *)t2) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(21, ng0);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 5049);
    t8 = *((int *)t6);
    t9 = (t8 - 1);
    t10 = (t9 * -1);
    xsi_vhdl_check_range_of_index(1, 0, -1, *((int *)t6));
    t11 = (1U * t10);
    t12 = (0 + t11);
    t13 = (t7 + t12);
    t14 = *((unsigned char *)t13);
    t15 = (t0 + 1352U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t18 = work_p_2688103174_sub_844862721510222423_2208071327(WORK_P_2688103174, t17);
    t19 = work_p_2688103174_sub_555418863048671952_2208071327(WORK_P_2688103174, t14, t18);
    t15 = (t0 + 1192U);
    t20 = *((char **)t15);
    t15 = (t0 + 5049);
    t21 = *((int *)t15);
    t22 = (t21 - 1);
    t23 = (t22 * -1);
    xsi_vhdl_check_range_of_index(1, 0, -1, *((int *)t15));
    t24 = (1U * t23);
    t25 = (0 + t24);
    t26 = (t20 + t25);
    t27 = *((unsigned char *)t26);
    t28 = (t0 + 1352U);
    t29 = *((char **)t28);
    t30 = *((unsigned char *)t29);
    t31 = work_p_2688103174_sub_555418863048671952_2208071327(WORK_P_2688103174, t27, t30);
    t32 = work_p_2688103174_sub_548075648222875806_2208071327(WORK_P_2688103174, t19, t31);
    t28 = (t0 + 5049);
    t33 = *((int *)t28);
    t34 = (t33 - 1);
    t35 = (t34 * -1);
    t36 = (1 * t35);
    t37 = (0U + t36);
    t38 = (t0 + 3184);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    *((unsigned char *)t42) = t32;
    xsi_driver_first_trans_delta(t38, t37, 1, 0LL);

LAB4:    t2 = (t0 + 5049);
    t4 = *((int *)t2);
    t3 = (t0 + 5053);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB5;

LAB6:    t1 = (t4 + 1);
    t4 = t1;
    t6 = (t0 + 5049);
    *((int *)t6) = t4;
    goto LAB2;

}


extern void work_a_0650388883_1181938964_init()
{
	static char *pe[] = {(void *)work_a_0650388883_1181938964_p_0};
	xsi_register_didat("work_a_0650388883_1181938964", "isim/mux_21_isim_beh.exe.sim/work/a_0650388883_1181938964.didat");
	xsi_register_executes(pe);
}
