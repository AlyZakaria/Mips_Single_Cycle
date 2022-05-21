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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/Mips_Single_Cycle/Sign_Extend.vhd";



static void work_a_0909257147_3212880686_p_0(char *t0)
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
    int t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2752);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_delta(t6, 16U, 16U, 0LL);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t11 = (15 - 15);
    t3 = (t11 * -1);
    t4 = (1U * t3);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t12 = *((unsigned char *)t1);
    t13 = (t12 == (unsigned char)2);
    if (t13 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t11 = (15 - 15);
    t3 = (t11 * -1);
    t4 = (1U * t3);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t12 = *((unsigned char *)t1);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 2672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t6 = (t0 + 4576);
    t14 = (16U != 16U);
    if (t14 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 2752);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_delta(t8, 0U, 16U, 0LL);
    goto LAB3;

LAB5:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(50, ng0);
    t6 = (t0 + 4592);
    t14 = (16U != 16U);
    if (t14 == 1)
        goto LAB9;

LAB10:    t8 = (t0 + 2752);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_delta(t8, 0U, 16U, 0LL);
    goto LAB3;

LAB9:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB10;

}


extern void work_a_0909257147_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0909257147_3212880686_p_0};
	xsi_register_didat("work_a_0909257147_3212880686", "isim/Single_Cycle_isim_beh.exe.sim/work/a_0909257147_3212880686.didat");
	xsi_register_executes(pe);
}
