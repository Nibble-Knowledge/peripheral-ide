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
static const char *ng0 = "C:/Users/Gham/Desktop/Actual files/IDE/IDE3_final/IDE3_final/write_tb.vhd";



static void work_a_2933491865_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2148U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2556);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1592U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2048);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2556);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1592U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2048);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2933491865_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 2292U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1592U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 2);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t5);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(107, ng0);
    t4 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t4);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2592);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(110, ng0);
    t4 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t4);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2592);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(112, ng0);
    t4 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t4);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 2628);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 2664);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(116, ng0);
    t4 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t4);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 2700);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(119, ng0);

LAB26:    t2 = (t0 + 2488);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    t3 = (t0 + 2488);
    *((int *)t3) = 0;
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 5196);
    t6 = (t0 + 2736);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(121, ng0);
    t4 = (5 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t4);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    t3 = (t0 + 1328U);
    t6 = *((char **)t3);
    t9 = *((unsigned char *)t6);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB24;
    else
        goto LAB26;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2700);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(123, ng0);
    t4 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t4);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 2700);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(126, ng0);

LAB38:    t2 = (t0 + 2496);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    t3 = (t0 + 2496);
    *((int *)t3) = 0;
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 5200);
    t6 = (t0 + 2736);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(128, ng0);
    t4 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t4);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    t3 = (t0 + 1328U);
    t6 = *((char **)t3);
    t9 = *((unsigned char *)t6);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB36;
    else
        goto LAB38;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 2700);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(130, ng0);
    t4 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t4);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 2700);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(133, ng0);

LAB50:    t2 = (t0 + 2504);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

LAB48:    t3 = (t0 + 2504);
    *((int *)t3) = 0;
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 5204);
    t6 = (t0 + 2736);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(135, ng0);
    t4 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t4);

LAB54:    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB49:    t3 = (t0 + 1328U);
    t6 = *((char **)t3);
    t9 = *((unsigned char *)t6);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB48;
    else
        goto LAB50;

LAB51:    goto LAB49;

LAB52:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 2700);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(137, ng0);
    t4 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t4);

LAB58:    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

LAB56:    xsi_set_current_line(139, ng0);
    t2 = (t0 + 2700);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(140, ng0);

LAB62:    t2 = (t0 + 2512);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB57:    goto LAB56;

LAB59:    goto LAB57;

LAB60:    t3 = (t0 + 2512);
    *((int *)t3) = 0;
    xsi_set_current_line(141, ng0);
    t2 = (t0 + 5208);
    t6 = (t0 + 2736);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(142, ng0);
    t4 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t4);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB61:    t3 = (t0 + 1328U);
    t6 = *((char **)t3);
    t9 = *((unsigned char *)t6);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB60;
    else
        goto LAB62;

LAB63:    goto LAB61;

LAB64:    xsi_set_current_line(143, ng0);
    t2 = (t0 + 2700);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(150, ng0);

LAB70:    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    goto LAB2;

LAB69:    goto LAB68;

LAB71:    goto LAB69;

}


extern void work_a_2933491865_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2933491865_2372691052_p_0,(void *)work_a_2933491865_2372691052_p_1};
	xsi_register_didat("work_a_2933491865_2372691052", "isim/write_tb_isim_beh.exe.sim/work/a_2933491865_2372691052.didat");
	xsi_register_executes(pe);
}
