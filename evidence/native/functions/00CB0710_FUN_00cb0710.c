/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction qualification: cdecl seven physical stack words, plain RET; only AL Boolean is returned. Packed point reads sign-extended X/Z/level bytes. CAF0F0 validity always first. Locked-border, edit-zone and shell gates precede height no-op gates; later selected checks require byte01187934 nonzero. Null error destination returns at first failure; nonnull records failure and continues, returning accumulated AL. Both recursive above/below checks receive bit6-adjusted flags; fence uses original flags. Exact called children, diagnostic destination layout, global byte writers and all concrete rule semantics remain separate. */

undefined1 __cdecl
FUN_00cb0710(void *param_1,char *param_2,float param_3,uint param_4,void *param_5,int param_6,
            int param_7)

{
  float fVar1;
  char cVar2;
  bool bVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  float fVar7;
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 local_1a;
  
  local_1a = 1;
  uVar4 = FUN_00caf0f0(param_1,param_2,param_5);
  if ((char)uVar4 == '\0') {
    return 0;
  }
  if (((param_4 & 1) != 0) && (cVar2 = FUN_00caf2f0((int)param_1,param_2,param_5), cVar2 != '\0')) {
    if (param_5 == (void *)0x0) {
      return 0;
    }
    local_1a = 0;
  }
  if (((param_4 >> 0x13 & 1) != 0) &&
     (uVar5 = FUN_00a64260(param_1,(undefined3 *)param_2,param_5), (char)uVar5 != '\0')) {
    if (param_5 == (void *)0x0) {
      return 0;
    }
    local_1a = 0;
  }
  if (((param_4 >> 0x14 & 1) != 0) &&
     (uVar5 = FUN_00caf3a0((int)param_1,param_2,param_5), (char)uVar5 != '\0')) {
    if (param_5 == (void *)0x0) {
      return 0;
    }
    local_1a = 0;
  }
  iVar6 = *(int *)(*(int *)((int)param_1 + 0x290) + 0x24);
  fVar1 = *(float *)(*(int *)(iVar6 + 0x10) +
                    ((((int)param_2[2] - *(int *)(*(int *)((int)param_1 + 0x290) + 0x10)) *
                      *(int *)(iVar6 + 4) + (int)*param_2) * *(int *)(iVar6 + 8) + (int)param_2[1])
                    * 4);
  fVar7 = fVar1 - param_3;
  auVar8._0_4_ = fVar7 * -1.0;
  auVar8._4_4_ = fVar7 * -1.0;
  auVar8._8_4_ = fVar7 * -1.0;
  auVar8._12_4_ = fVar7 * -1.0;
  auVar9._4_4_ = fVar7;
  auVar9._0_4_ = fVar7;
  auVar9._8_4_ = fVar7;
  auVar9._12_4_ = fVar7;
  auVar9 = maxps(auVar8,auVar9);
  auVar10._4_4_ = -(uint)(auVar9._4_4_ <= 1.5258789e-05);
  auVar10._0_4_ = -(uint)(auVar9._0_4_ <= 1.5258789e-05);
  auVar10._8_4_ = -(uint)(auVar9._8_4_ <= 1.5258789e-05);
  auVar10._12_4_ = -(uint)(auVar9._12_4_ <= 1.5258789e-05);
  iVar6 = movmskps((int)param_2[1],auVar10);
  if (((iVar6 != 0xf) || ((param_4 >> 0x12 & 1) == 0)) &&
     (((param_4 >> 0x11 & 1) != 0 || (0.05 <= ABS(fVar7))))) {
    if (((param_2[2] < '\x01') && ((param_4 >> 1 & 1) != 0)) &&
       (cVar2 = FUN_00caf180(param_1,(undefined3 *)param_2,param_3,param_5), cVar2 != '\0')) {
      if (param_5 == (void *)0x0) {
        return 0;
      }
      local_1a = 0;
    }
    if (DAT_01187934 != '\0') {
      if (((param_4 >> 3 & 1) != 0) &&
         (cVar2 = FUN_00caf570((int)param_1,(undefined2 *)param_2,param_5), cVar2 != '\0')) {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      if (((param_4 >> 2 & 1) != 0) &&
         (cVar2 = FUN_00caf440((int)param_1,(undefined2 *)param_2,param_5), cVar2 != '\0')) {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      if ((((param_4 >> 7 & 1) != 0) && (iVar6 != 0xf)) &&
         (cVar2 = FUN_00cafbc0(param_1,param_2,param_3,param_5,param_6,param_7), cVar2 != '\0')) {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      uVar4 = param_4;
      if ((param_4 >> 6 & 1) != 0) {
        uVar4 = param_4 | 8;
      }
      if (((param_4 >> 4 & 1) != 0) &&
         (uVar5 = FUN_00cafe90(param_1,param_2,param_3,uVar4,param_5), (char)uVar5 != '\0')) {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      if (((param_4 >> 5 & 1) != 0) &&
         (uVar5 = FUN_00cb0010(param_1,param_2,param_3,uVar4,param_5), (char)uVar5 != '\0')) {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      if (((param_4 >> 8 & 1) != 0) && (bVar3 = FUN_00cb0390((int)param_1,param_2,param_5), bVar3))
      {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      if (((param_4 >> 9 & 1) != 0) &&
         (uVar5 = FUN_00caf220(param_1,(undefined2 *)param_2), (char)uVar5 != '\0')) {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      if (((param_4 >> 10 & 1) != 0) &&
         (uVar5 = FUN_00caf880(param_1,param_2,fVar1,param_3,param_5), (char)uVar5 != '\0')) {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      if (((param_4 >> 0xb & 1) != 0) &&
         (uVar5 = FUN_00cafad0(param_1,param_2,param_5), (char)uVar5 != '\0')) {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      if ((((param_4 >> 0xc & 1) != 0) || ((param_4 >> 0xd & 1) != 0)) &&
         (uVar5 = FUN_00cb0b10((int)param_1,param_2,param_3,param_4,param_5), (char)uVar5 != '\0'))
      {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      if (((param_4 >> 0xe & 1) != 0) &&
         (uVar5 = FUN_00cb0430(param_1,param_2,param_3), (char)uVar5 != '\0')) {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      if (((param_4 >> 0xf & 1) != 0) &&
         (uVar5 = FUN_00cb0560((int)param_1,param_2,param_3), (char)uVar5 != '\0')) {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
      if (((param_4 >> 0x10 & 1) != 0) &&
         (uVar5 = FUN_00caf280(param_1,param_2,param_3,param_5), (char)uVar5 != '\0')) {
        if (param_5 == (void *)0x0) {
          return 0;
        }
        local_1a = 0;
      }
    }
  }
  return local_1a;
}
