/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_AddRadialRangeDestination. Export
   ordinal(s): 617. Entry VA: 0x10547e70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600016E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
Route_AddRadialRangeDestination
          (uint param_1,undefined4 param_2,undefined4 param_3,int param_4,undefined4 param_5,
          undefined4 param_6)

{
  undefined4 uVar1;
  undefined4 uVar2;
  uint in_EAX;
  int *piVar3;
  int *this;
  undefined4 *puVar4;
  void *this_00;
  int iVar5;
  void *pvVar6;
  undefined4 uVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  undefined1 in_XMM3 [16];
  undefined1 auVar23 [16];
  undefined4 in_stack_00000034;
  undefined4 in_stack_00000038;
  undefined4 in_stack_0000003c;
  undefined4 in_stack_00000040;
  undefined4 in_stack_00000044;
  undefined4 in_stack_00000048;
  undefined4 in_stack_0000004c;
  uint uStack_4c;
  uint uStack_48;
  int *local_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x547e70  617  Route_AddRadialRangeDestination */
  if (DAT_10c78944 != (void *)0x0) {
    piVar3 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    in_EAX = 0;
    if (piVar3 != (int *)0x0) {
      local_44 = piVar3;
      (**(code **)(*piVar3 + 0x10))();
      this = (int *)FUN_105435a0((int)piVar3);
      if (this != (int *)0x0) {
        (**(code **)*this)();
        puVar4 = (undefined4 *)FUN_10918eb0(0x80,"Routing/RadialRangeDestination",0);
        if (puVar4 != (undefined4 *)0x0) {
          this_00 = (void *)FUN_1053fdb0(puVar4);
          if (this_00 != (void *)0x0) {
            *(undefined4 *)((int)this_00 + 0x50) = param_5;
            *(undefined4 *)((int)this_00 + 0x54) = param_6;
            puVar4 = (undefined4 *)FUN_1055db20(&stack0x0000001c,&fStack_40);
            uVar7 = puVar4[1];
            uVar1 = puVar4[2];
            uVar2 = puVar4[3];
            *(undefined4 *)((int)this_00 + 0x40) = *puVar4;
            *(undefined4 *)((int)this_00 + 0x44) = uVar7;
            *(undefined4 *)((int)this_00 + 0x48) = uVar1;
            *(undefined4 *)((int)this_00 + 0x4c) = uVar2;
            puVar4 = (undefined4 *)FUN_1055db20(&stack0x00000028,&fStack_40);
            uVar7 = puVar4[1];
            uVar1 = puVar4[2];
            uVar2 = puVar4[3];
            *(undefined4 *)((int)this_00 + 0x30) = *puVar4;
            *(undefined4 *)((int)this_00 + 0x34) = uVar7;
            *(undefined4 *)((int)this_00 + 0x38) = uVar1;
            *(undefined4 *)((int)this_00 + 0x3c) = uVar2;
            *(undefined4 *)((int)this_00 + 0x5c) = in_stack_00000038;
            *(undefined4 *)((int)this_00 + 0x6c) = in_stack_0000003c;
            *(undefined4 *)((int)this_00 + 0x60) = in_stack_00000040;
            *(undefined4 *)((int)this_00 + 100) = in_stack_00000044;
            *(undefined4 *)((int)this_00 + 0x68) = in_stack_00000048;
            *(undefined4 *)((int)this_00 + 0x58) = in_stack_00000034;
            *(undefined4 *)((int)this_00 + 0x70) = in_stack_0000004c;
            if (param_4 != 0) {
              piVar3 = (int *)FUN_1055b120();
              uStack_48 = 0;
              uStack_4c = 0;
              (**(code **)(*piVar3 + 0x78))(param_4,&uStack_48,&uStack_4c);
              FUN_1053c730(this_00,uStack_48,uStack_4c);
            }
            *(undefined4 *)((int)this_00 + 0x28) = param_2;
            *(undefined4 *)((int)this_00 + 0x2c) = param_3;
            FUN_1053fac0(this,(int)this_00);
            if (*(int *)((int)this_00 + 0x50) != 0 || *(int *)((int)this_00 + 0x54) != 0) {
              iVar5 = FUN_1072a1a0();
              if (iVar5 != 0) {
                pvVar6 = (void *)FUN_1072abb0(iVar5);
                pvVar6 = (void *)GameObject_GetTransformComponent(pvVar6);
                if (pvVar6 != (void *)0x0) {
                  FUN_1074a190(pvVar6,&fStack_30);
                  fVar8 = fStack_24 * fStack_24 + fStack_2c * fStack_2c +
                          fStack_28 * fStack_28 + fStack_30 * fStack_30;
                  auVar23._4_4_ = fVar8;
                  auVar23._0_4_ = fVar8;
                  auVar23._8_4_ = fVar8;
                  auVar23._12_4_ = fVar8;
                  auVar23 = rcpps(in_XMM3,auVar23);
                  fVar13 = (_DAT_10aadffc - auVar23._0_4_ * fVar8) * auVar23._0_4_;
                  fVar15 = (_DAT_10aadffc - auVar23._4_4_ * fVar8) * auVar23._4_4_;
                  fVar17 = (_DAT_10aadffc - auVar23._8_4_ * fVar8) * auVar23._8_4_;
                  fVar19 = (_DAT_10aadffc - auVar23._12_4_ * fVar8) * auVar23._12_4_;
                  uStack_48 = 0x80000000;
                  fVar9 = (_DAT_10aadffc - fVar13 * fVar8) * fVar13 * -fStack_30;
                  fVar10 = (_DAT_10aadffc - fVar15 * fVar8) * fVar15 * -fStack_2c;
                  fVar11 = (_DAT_10aadffc - fVar17 * fVar8) * fVar17 * -fStack_28;
                  fStack_40 = (_DAT_10aadffc - fVar19 * fVar8) * fVar19 * fStack_24;
                  fVar8 = (fStack_18 * fVar10 - fStack_1c * fVar11) + fStack_40 * fStack_20;
                  fVar13 = (fStack_20 * fVar11 - fStack_18 * fVar9) + fStack_40 * fStack_1c;
                  fVar15 = (fStack_1c * fVar9 - fStack_20 * fVar10) + fStack_40 * fStack_18;
                  fStack_20 = 0.0 - ((fVar15 * fVar10 - fVar13 * fVar11) * _DAT_10aadffc + fStack_20
                                    );
                  fStack_1c = 0.0 - ((fVar8 * fVar11 - fVar15 * fVar9) * _DAT_10aadffc + fStack_1c);
                  fStack_18 = 0.0 - ((fVar13 * fVar9 - fVar8 * fVar10) * _DAT_10aadffc + fStack_18);
                  fStack_14 = 0.0 - ((fVar8 * fVar9 - fVar8 * fVar9) * _DAT_10aadffc + fStack_14);
                  fVar8 = *(float *)((int)this_00 + 0x40);
                  fVar13 = *(float *)((int)this_00 + 0x44);
                  fVar15 = *(float *)((int)this_00 + 0x48);
                  fVar14 = (fVar15 * fVar10 - fVar13 * fVar11) + fVar8 * fStack_40;
                  fVar16 = (fVar8 * fVar11 - fVar15 * fVar9) + fVar13 * fStack_40;
                  fVar18 = (fVar13 * fVar9 - fVar8 * fVar10) + fVar15 * fStack_40;
                  fVar17 = *(float *)((int)this_00 + 0x30);
                  fVar19 = *(float *)((int)this_00 + 0x34);
                  fVar12 = *(float *)((int)this_00 + 0x38);
                  fVar20 = (fVar12 * fVar10 - fVar19 * fVar11) + fVar17 * fStack_40;
                  fVar21 = (fVar17 * fVar11 - fVar12 * fVar9) + fVar19 * fStack_40;
                  fVar19 = (fVar19 * fVar9 - fVar17 * fVar10) + fVar12 * fStack_40;
                  fVar17 = (fVar19 * fVar10 - fVar21 * fVar11) * _DAT_10aadffc;
                  fVar19 = (fVar20 * fVar11 - fVar19 * fVar9) * _DAT_10aadffc;
                  fVar12 = (fVar21 * fVar9 - fVar20 * fVar10) * _DAT_10aadffc;
                  fVar20 = (fVar20 * fVar9 - fVar20 * fVar9) * _DAT_10aadffc;
                  fVar21 = (fVar14 * fVar11 - fVar18 * fVar9) * _DAT_10aadffc;
                  fVar22 = (fVar16 * fVar9 - fVar14 * fVar10) * _DAT_10aadffc;
                  fVar9 = (fVar14 * fVar9 - fVar14 * fVar9) * _DAT_10aadffc;
                  *(float *)((int)this_00 + 0x40) =
                       (fVar18 * fVar10 - fVar16 * fVar11) * _DAT_10aadffc + fVar8 + fStack_20;
                  *(float *)((int)this_00 + 0x44) = fVar21 + fVar13 + fStack_1c;
                  *(float *)((int)this_00 + 0x48) = fVar22 + fVar15 + fStack_18;
                  *(float *)((int)this_00 + 0x4c) =
                       fVar9 + *(float *)((int)this_00 + 0x4c) + fStack_14;
                  *(float *)((int)this_00 + 0x30) = fVar17 + *(float *)((int)this_00 + 0x30);
                  *(float *)((int)this_00 + 0x34) = fVar19 + *(float *)((int)this_00 + 0x34);
                  *(float *)((int)this_00 + 0x38) = fVar12 + *(float *)((int)this_00 + 0x38);
                  *(float *)((int)this_00 + 0x3c) = fVar20 + *(float *)((int)this_00 + 0x3c);
                  fStack_3c = fStack_40;
                  fStack_38 = fStack_40;
                  fStack_34 = fStack_40;
                }
              }
            }
            (**(code **)(*this + 4))();
            uVar7 = (**(code **)(*local_44 + 0x14))();
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
        }
        (**(code **)(*this + 4))();
      }
      in_EAX = (**(code **)(*piVar3 + 0x14))();
    }
  }
  return in_EAX & 0xffffff00;
}

