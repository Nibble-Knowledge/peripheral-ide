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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Gham/Desktop/Actual files/IDE/IDE3_final/IDE3_final/shift_reg.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1874319323_3212880686_p_0(char *t0)
{
    char t16[16];
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2052);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 2104);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1052U);
    t6 = *((char **)t2);
    t13 = (15 - 11);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t2 = (t6 + t15);
    t7 = (t0 + 684U);
    t8 = *((char **)t7);
    t9 = ((IEEE_P_2592010699) + 2332);
    t10 = (t17 + 0U);
    t18 = (t10 + 0U);
    *((int *)t18) = 11;
    t18 = (t10 + 4U);
    *((int *)t18) = 0;
    t18 = (t10 + 8U);
    *((int *)t18) = -1;
    t19 = (0 - 11);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t18 = (t10 + 12U);
    *((unsigned int *)t18) = t20;
    t18 = (t0 + 3736U);
    t7 = xsi_base_array_concat(t7, t16, t9, (char)97, t2, t17, (char)97, t8, t18, (char)101);
    t20 = (12U + 4U);
    t21 = (16U != t20);
    if (t21 == 1)
        goto LAB10;

LAB11:    t22 = (t0 + 2104);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t7, 16U);
    xsi_driver_first_trans_fast(t22);
    goto LAB3;

LAB7:    t2 = (t0 + 868U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_size_not_matching(16U, t20, 0);
    goto LAB11;

}

static void work_a_1874319323_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2140);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 2060);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1874319323_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1874319323_3212880686_p_0,(void *)work_a_1874319323_3212880686_p_1};
	xsi_register_didat("work_a_1874319323_3212880686", "isim/sr_tb_isim_beh.exe.sim/work/a_1874319323_3212880686.didat");
	xsi_register_executes(pe);
}
