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
static const char *ng0 = "E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/Mips_Single_Cycle/Alu_Control.vhd";



static void work_a_3044219816_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned char t28;
    unsigned int t29;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4892);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4898);
    t4 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t4 = 0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4904);
    t4 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t4 = 0;

LAB23:    if (t4 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t26 = (1 - 1);
    t5 = (t26 * -1);
    t15 = (1U * t5);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t4 = *((unsigned char *)t1);
    t18 = (t4 == (unsigned char)3);
    if (t18 != 0)
        goto LAB71;

LAB72:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t8 = (t0 + 4894);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(49, ng0);
    t8 = (t0 + 4900);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB13:    t5 = 0;

LAB16:    if (t5 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB14;

LAB18:    t5 = (t5 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(52, ng0);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t15 = (5 - 3);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t8 = (t9 + t17);
    t10 = (t0 + 4906);
    t18 = 1;
    if (4U == 4U)
        goto LAB30;

LAB31:    t18 = 0;

LAB32:    if (t18 != 0)
        goto LAB27;

LAB29:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 4914);
    t4 = 1;
    if (4U == 4U)
        goto LAB38;

LAB39:    t4 = 0;

LAB40:    if (t4 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 4922);
    t4 = 1;
    if (4U == 4U)
        goto LAB46;

LAB47:    t4 = 0;

LAB48:    if (t4 != 0)
        goto LAB44;

LAB45:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t26 = (1 - 1);
    t5 = (t26 * -1);
    t15 = (1U * t5);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t4 = *((unsigned char *)t1);
    t18 = (t4 == (unsigned char)3);
    if (t18 != 0)
        goto LAB52;

LAB53:
LAB28:    goto LAB3;

LAB21:    t5 = 0;

LAB24:    if (t5 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB22;

LAB26:    t5 = (t5 + 1);
    goto LAB24;

LAB27:    xsi_set_current_line(53, ng0);
    t14 = (t0 + 4910);
    t21 = (t0 + 2912);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 4U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB28;

LAB30:    t19 = 0;

LAB33:    if (t19 < 4U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t12 = (t8 + t19);
    t13 = (t10 + t19);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB31;

LAB35:    t19 = (t19 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(55, ng0);
    t9 = (t0 + 4918);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB28;

LAB38:    t17 = 0;

LAB41:    if (t17 < 4U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB39;

LAB43:    t17 = (t17 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(57, ng0);
    t9 = (t0 + 4926);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB28;

LAB46:    t17 = 0;

LAB49:    if (t17 < 4U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB47;

LAB51:    t17 = (t17 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1192U);
    t6 = *((char **)t3);
    t17 = (5 - 3);
    t19 = (t17 * 1U);
    t27 = (0 + t19);
    t3 = (t6 + t27);
    t7 = (t0 + 4930);
    t28 = 1;
    if (4U == 4U)
        goto LAB57;

LAB58:    t28 = 0;

LAB59:    if (t28 != 0)
        goto LAB54;

LAB56:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 4938);
    t4 = 1;
    if (4U == 4U)
        goto LAB65;

LAB66:    t4 = 0;

LAB67:    if (t4 != 0)
        goto LAB63;

LAB64:
LAB55:    goto LAB28;

LAB54:    xsi_set_current_line(60, ng0);
    t11 = (t0 + 4934);
    t13 = (t0 + 2912);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB55;

LAB57:    t29 = 0;

LAB60:    if (t29 < 4U)
        goto LAB61;
    else
        goto LAB59;

LAB61:    t9 = (t3 + t29);
    t10 = (t7 + t29);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB58;

LAB62:    t29 = (t29 + 1);
    goto LAB60;

LAB63:    xsi_set_current_line(62, ng0);
    t9 = (t0 + 4942);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB55;

LAB65:    t17 = 0;

LAB68:    if (t17 < 4U)
        goto LAB69;
    else
        goto LAB67;

LAB69:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB66;

LAB70:    t17 = (t17 + 1);
    goto LAB68;

LAB71:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 1192U);
    t6 = *((char **)t3);
    t17 = (5 - 3);
    t19 = (t17 * 1U);
    t27 = (0 + t19);
    t3 = (t6 + t27);
    t7 = (t0 + 4946);
    t28 = 1;
    if (4U == 4U)
        goto LAB76;

LAB77:    t28 = 0;

LAB78:    if (t28 != 0)
        goto LAB73;

LAB75:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 4954);
    t4 = 1;
    if (4U == 4U)
        goto LAB84;

LAB85:    t4 = 0;

LAB86:    if (t4 != 0)
        goto LAB82;

LAB83:
LAB74:    goto LAB3;

LAB73:    xsi_set_current_line(67, ng0);
    t11 = (t0 + 4950);
    t13 = (t0 + 2912);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB74;

LAB76:    t29 = 0;

LAB79:    if (t29 < 4U)
        goto LAB80;
    else
        goto LAB78;

LAB80:    t9 = (t3 + t29);
    t10 = (t7 + t29);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB77;

LAB81:    t29 = (t29 + 1);
    goto LAB79;

LAB82:    xsi_set_current_line(69, ng0);
    t9 = (t0 + 4958);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB74;

LAB84:    t17 = 0;

LAB87:    if (t17 < 4U)
        goto LAB88;
    else
        goto LAB86;

LAB88:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB85;

LAB89:    t17 = (t17 + 1);
    goto LAB87;

}


extern void work_a_3044219816_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3044219816_3212880686_p_0};
	xsi_register_didat("work_a_3044219816_3212880686", "isim/Single_Cycle_isim_beh.exe.sim/work/a_3044219816_3212880686.didat");
	xsi_register_executes(pe);
}
