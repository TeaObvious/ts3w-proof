/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* PC 1.67 original instruction review. Analyst-assigned name. Saves controller time(vtable+14),
   sets time to total duration(vtable+20 via+10), evaluates(vtable+c), restores saved time. Uses
   controller owner rig and evaluation node to output four-lane translation and rotation; returns
   xyz translation magnitude in ST0 and speed magnitude/duration when duration>0, else1. Decompiler
   frame locals/restore-time expression require original stack instructions; no live asset
   evaluation was executed. */

float10 __cdecl
AnimationController_SampleTotalMotionAndSpeed
          (int *param_1,undefined4 *param_2,undefined4 *param_3,float *param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  float10 fVar6;
  undefined1 auVar7 [16];
  float *pfVar8;
  int *piVar9;
  undefined4 *puVar10;
  float afStack_44cc [5];
  float fStack_44b8;
  undefined4 uStack_44b4;
  undefined4 uStack_44b0;
  undefined4 uStack_44ac;
  undefined4 uStack_44a8;
  float fStack_44a4;
  undefined4 uStack_44a0;
  undefined4 uStack_449c;
  undefined4 uStack_4498;
  undefined4 uStack_4494;
  float fStack_4490;
  int *piStack_448c;
  undefined4 uStack_4488;
  float fStack_4484;
  float fStack_447c;
  undefined4 uStack_4478;
  undefined1 auStack_4364 [8];
  undefined1 auStack_435c [8];
  undefined1 auStack_4354 [4];
  undefined1 local_4350 [17212];
  undefined4 uStack_14;
  
  uStack_14 = 0x848820;
  if (param_1 != (int *)0x0) {
    FUN_0054ca40((int)local_4350);
    fVar6 = (float10)(**(code **)(*param_1 + 0x14))();
    afStack_44cc[2] = (float)fVar6;
    iVar1 = *param_1;
    fVar6 = (float10)(**(code **)(iVar1 + 0x20))();
    (**(code **)(iVar1 + 0x10))((float)fVar6);
    uVar4 = (**(code **)(*param_1 + 0xc))(auStack_4354);
    (**(code **)(*param_1 + 0x10))(afStack_44cc[0]);
    FUN_0083a990(afStack_44cc);
    afStack_44cc[0] = DAT_00f998f8;
    afStack_44cc[1] = 0.0;
    afStack_44cc[2] = 0.0;
    afStack_44cc[3] = 0.0;
    afStack_44cc[4] = 0.0;
    fStack_44b8 = DAT_00f998f8;
    uStack_44b4 = 0;
    uStack_44b0 = 0;
    uStack_44ac = 0;
    uStack_449c = 0;
    uStack_44a8 = 0;
    fStack_44a4 = DAT_00f998f8;
    uStack_44a0 = 0;
    uStack_4498 = 0;
    uStack_4494 = 0;
    fStack_4490 = DAT_00f998f8;
    fVar6 = (float10)(**(code **)(*param_1 + 0x20))();
    fStack_447c = (float)fVar6;
    piStack_448c = (int *)(**(code **)(*(int *)param_1[7] + 0x20))();
    uStack_4488 = 0;
    uStack_4478 = 1;
    FUN_0054c8e0(auStack_435c,uVar4);
    if (piStack_448c != (int *)0x0) {
      puVar5 = FUN_005749a0();
      if (puVar5 == (undefined4 *)0x0) {
        puVar5 = (undefined4 *)0x0;
      }
      else {
        piVar9 = piStack_448c;
        if (piStack_448c != (int *)0x0) {
          (**(code **)*piStack_448c)();
        }
        puVar5 = FUN_00575050(puVar5,piVar9);
        if (puVar5 != (undefined4 *)0x0) {
          puVar5[1] = puVar5[1] + 1;
        }
      }
      pfVar8 = afStack_44cc;
      puVar10 = puVar5;
      FUN_0054c890((int)auStack_435c);
      uVar4 = puVar5[5];
      uVar2 = puVar5[6];
      uVar3 = puVar5[7];
      *param_2 = puVar5[4];
      param_2[1] = uVar4;
      param_2[2] = uVar2;
      param_2[3] = uVar3;
      uVar4 = puVar5[9];
      uVar2 = puVar5[10];
      uVar3 = puVar5[0xb];
      *param_3 = puVar5[8];
      param_3[1] = uVar4;
      param_3[2] = uVar2;
      param_3[3] = uVar3;
      auVar7._0_4_ = (float)puVar5[6] * (float)puVar5[6] + (float)puVar5[5] * (float)puVar5[5] +
                     (float)puVar5[4] * (float)puVar5[4];
      auVar7._4_4_ = auVar7._0_4_;
      auVar7._8_4_ = auVar7._0_4_;
      auVar7._12_4_ = auVar7._0_4_;
      auVar7 = sqrtps(auVar7,auVar7);
      *param_4 = DAT_00f998f8;
      if (DAT_010f4ccc < fStack_4484) {
        *param_4 = auVar7._0_4_ / fStack_4484;
      }
      iVar1 = puVar5[1];
      puVar5[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        puVar5[1] = 1;
        (**(code **)*puVar5)(1,pfVar8,puVar10);
      }
      FUN_0054ca00((int)auStack_4364);
      return (float10)auVar7._0_4_;
    }
    FUN_0054ca00((int)auStack_435c);
  }
  return (float10)0;
}

