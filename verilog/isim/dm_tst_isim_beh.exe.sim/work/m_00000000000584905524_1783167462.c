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
static const char *ng0 = "time = %d\n";
static const char *ng1 = "\tmemory[0] = %b\n";
static int ng2[] = {0, 0};
static const char *ng3 = "\tmemory[1] = %b\n";
static int ng4[] = {1, 0};
static const char *ng5 = "\tmemory[2] = %b\n";
static int ng6[] = {2, 0};
static const char *ng7 = "\tmemory[3] = %b\n";
static int ng8[] = {3, 0};
static const char *ng9 = "\tmemory[4] = %b\n";
static int ng10[] = {4, 0};
static const char *ng11 = "\tmemory[5] = %b\n";
static int ng12[] = {5, 0};
static const char *ng13 = "\tmemory[6] = %b\n";
static int ng14[] = {6, 0};
static const char *ng15 = "\tmemory[7] = %b\n";
static int ng16[] = {7, 0};
static const char *ng17 = "E:/UI/CA/verilog/project2/Group-K/verilog/DataMem.v";
static const char *ng18 = "E:/UI/CA/verilog/project2/Group-K/verilog/test/t.txt";
static const char *ng19 = "./test/our.o";
static unsigned int ng20[] = {1U, 0U};
static unsigned int ng21[] = {0U, 0U};

void Monitor_41_2(char *);
void Monitor_41_2(char *);


static void Monitor_41_2_Func(char *t0)
{
    char t4[16];
    char t9[8];
    char t20[8];
    char t31[8];
    char t42[8];
    char t53[8];
    char t64[8];
    char t75[8];
    char t86[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;

LAB0:    t1 = (t0 + 2568);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = xsi_vlog_time(t4, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_fwrite(*((unsigned int *)t3), 0, 0, 3, ng0, 2, t0, (char)118, t4, 64);
    t6 = (t0 + 2408);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t0 + 2408);
    t11 = (t10 + 72U);
    t12 = *((char **)t11);
    t13 = (t0 + 2408);
    t14 = (t13 + 64U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng2)));
    xsi_vlog_generic_get_array_select_value(t9, 16, t8, t12, t15, 2, 1, t16, 32, 1);
    xsi_vlogfile_fwrite(*((unsigned int *)t3), 0, 0, 3, ng1, 2, t0, (char)118, t9, 16);
    t17 = (t0 + 2408);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = (t0 + 2408);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t24 = (t0 + 2408);
    t25 = (t24 + 64U);
    t26 = *((char **)t25);
    t27 = ((char*)((ng4)));
    xsi_vlog_generic_get_array_select_value(t20, 16, t19, t23, t26, 2, 1, t27, 32, 1);
    xsi_vlogfile_fwrite(*((unsigned int *)t3), 0, 0, 3, ng3, 2, t0, (char)118, t20, 16);
    t28 = (t0 + 2408);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t32 = (t0 + 2408);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = (t0 + 2408);
    t36 = (t35 + 64U);
    t37 = *((char **)t36);
    t38 = ((char*)((ng6)));
    xsi_vlog_generic_get_array_select_value(t31, 16, t30, t34, t37, 2, 1, t38, 32, 1);
    xsi_vlogfile_fwrite(*((unsigned int *)t3), 0, 0, 3, ng5, 2, t0, (char)118, t31, 16);
    t39 = (t0 + 2408);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t43 = (t0 + 2408);
    t44 = (t43 + 72U);
    t45 = *((char **)t44);
    t46 = (t0 + 2408);
    t47 = (t46 + 64U);
    t48 = *((char **)t47);
    t49 = ((char*)((ng8)));
    xsi_vlog_generic_get_array_select_value(t42, 16, t41, t45, t48, 2, 1, t49, 32, 1);
    xsi_vlogfile_fwrite(*((unsigned int *)t3), 0, 0, 3, ng7, 2, t0, (char)118, t42, 16);
    t50 = (t0 + 2408);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t54 = (t0 + 2408);
    t55 = (t54 + 72U);
    t56 = *((char **)t55);
    t57 = (t0 + 2408);
    t58 = (t57 + 64U);
    t59 = *((char **)t58);
    t60 = ((char*)((ng10)));
    xsi_vlog_generic_get_array_select_value(t53, 16, t52, t56, t59, 2, 1, t60, 32, 1);
    xsi_vlogfile_fwrite(*((unsigned int *)t3), 0, 0, 3, ng9, 2, t0, (char)118, t53, 16);
    t61 = (t0 + 2408);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    t65 = (t0 + 2408);
    t66 = (t65 + 72U);
    t67 = *((char **)t66);
    t68 = (t0 + 2408);
    t69 = (t68 + 64U);
    t70 = *((char **)t69);
    t71 = ((char*)((ng12)));
    xsi_vlog_generic_get_array_select_value(t64, 16, t63, t67, t70, 2, 1, t71, 32, 1);
    xsi_vlogfile_fwrite(*((unsigned int *)t3), 0, 0, 3, ng11, 2, t0, (char)118, t64, 16);
    t72 = (t0 + 2408);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    t76 = (t0 + 2408);
    t77 = (t76 + 72U);
    t78 = *((char **)t77);
    t79 = (t0 + 2408);
    t80 = (t79 + 64U);
    t81 = *((char **)t80);
    t82 = ((char*)((ng14)));
    xsi_vlog_generic_get_array_select_value(t75, 16, t74, t78, t81, 2, 1, t82, 32, 1);
    xsi_vlogfile_fwrite(*((unsigned int *)t3), 0, 0, 3, ng13, 2, t0, (char)118, t75, 16);
    t83 = (t0 + 2408);
    t84 = (t83 + 56U);
    t85 = *((char **)t84);
    t87 = (t0 + 2408);
    t88 = (t87 + 72U);
    t89 = *((char **)t88);
    t90 = (t0 + 2408);
    t91 = (t90 + 64U);
    t92 = *((char **)t91);
    t93 = ((char*)((ng16)));
    xsi_vlog_generic_get_array_select_value(t86, 16, t85, t89, t92, 2, 1, t93, 32, 1);
    xsi_vlogfile_fwrite(*((unsigned int *)t3), 1, 0, 3, ng15, 2, t0, (char)118, t86, 16);

LAB1:    return;
}

static void NetDecl_34_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng17);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 7U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 7U);
    t12 = (t0 + 4928);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 7U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 2U);
    t25 = (t0 + 4800);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Initial_35_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng17);

LAB4:    xsi_set_current_line(37, ng17);
    t2 = (t0 + 2408);
    xsi_vlogfile_readmemh(ng18, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(40, ng17);
    *((int *)t3) = xsi_vlogfile_file_open_of_cname(ng19);
    t2 = (t3 + 4);
    *((int *)t2) = 0;
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(41, ng17);
    Monitor_41_2(t0);
    xsi_set_current_line(50, ng17);
    t2 = (t0 + 3544);
    xsi_process_wait(t2, 160000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(51, ng17);
    t2 = (t0 + 2568);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_vlogfile_fclose(*((unsigned int *)t5));
    goto LAB1;

}

static void Always_54_3(char *t0)
{
    char t13[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    int t24;
    char *t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;

LAB0:    t1 = (t0 + 3984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng17);
    t2 = (t0 + 4816);
    *((int *)t2) = 1;
    t3 = (t0 + 4016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng17);

LAB5:    xsi_set_current_line(55, ng17);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(56, ng17);
    t11 = (t0 + 1368U);
    t12 = *((char **)t11);
    t11 = (t0 + 2408);
    t15 = (t0 + 2408);
    t16 = (t15 + 72U);
    t17 = *((char **)t16);
    t18 = (t0 + 2408);
    t19 = (t18 + 64U);
    t20 = *((char **)t19);
    t21 = (t0 + 2008U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_array_indices(t13, t14, t17, t20, 2, 1, t22, 3, 2);
    t21 = (t13 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (!(t23));
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB9;

LAB10:    goto LAB8;

LAB9:    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t14);
    t31 = (t29 - t30);
    t32 = (t31 + 1);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, *((unsigned int *)t14), t32, 0LL);
    goto LAB10;

}

static void Cont_58_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t36[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;

LAB0:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng17);
    t2 = (t0 + 1688U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng20)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t45 = *((unsigned int *)t4);
    t46 = (~(t45));
    t47 = *((unsigned int *)t29);
    t48 = (t46 || t47);
    if (t48 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t43, 8);

LAB20:    t49 = (t0 + 4992);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    memset(t53, 0, 8);
    t54 = 65535U;
    t55 = t54;
    t56 = (t3 + 4);
    t57 = *((unsigned int *)t3);
    t54 = (t54 & t57);
    t58 = *((unsigned int *)t56);
    t55 = (t55 & t58);
    t59 = (t53 + 4);
    t60 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t60 | t54);
    t61 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t61 | t55);
    xsi_driver_vfirst_trans(t49, 0, 15);
    t62 = (t0 + 4832);
    *((int *)t62) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 2408);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t37 = (t0 + 2408);
    t38 = (t37 + 72U);
    t39 = *((char **)t38);
    t40 = (t0 + 2408);
    t41 = (t40 + 64U);
    t42 = *((char **)t41);
    t43 = (t0 + 2008U);
    t44 = *((char **)t43);
    xsi_vlog_generic_get_array_select_value(t36, 16, t35, t39, t42, 2, 1, t44, 3, 2);
    goto LAB13;

LAB14:    t43 = ((char*)((ng21)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 16, t36, 16, t43, 16);
    goto LAB20;

LAB18:    memcpy(t3, t36, 8);
    goto LAB20;

}

void Monitor_41_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2568);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t0 + 4288);
    t5 = (t0 + 4848);
    xsi_vlog_fmonitor(*((unsigned int *)t3), (void *)Monitor_41_2_Func, t4, t5);

LAB1:    return;
}


extern void work_m_00000000000584905524_1783167462_init()
{
	static char *pe[] = {(void *)NetDecl_34_0,(void *)Initial_35_1,(void *)Always_54_3,(void *)Cont_58_4,(void *)Monitor_41_2};
	xsi_register_didat("work_m_00000000000584905524_1783167462", "isim/dm_tst_isim_beh.exe.sim/work/m_00000000000584905524_1783167462.didat");
	xsi_register_executes(pe);
}
