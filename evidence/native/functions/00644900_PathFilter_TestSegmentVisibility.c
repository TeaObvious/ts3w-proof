/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* PC 1.67 original: ECX filter owner, six stack words, RET 0x18; AL truth. Lot segment splitting
   uses C695D0 and lot-local visibility. Off-lot spans call 00658E50 with mask 0x7D or 0x59 selected
   by owner +0x71, sampling step 0.25 and additional float context 1.0. Ordinary versus smoothing
   masks differ by both sea 0x04 and pond 0x20. The complete body retains its lot-split continuation
   and lot-local dispatch; this name does not imply every branch directly calls world visibility. */

uint __thiscall
PathFilter_TestSegmentVisibility
          (void *this,int *param_1,int *param_2,int param_3,float param_4,float param_5,int param_6)

{
  int *piVar1;
  undefined1 uVar2;
  bool bVar3;
  void *pvVar4;
  undefined3 extraout_var;
  int iVar5;
  undefined3 extraout_var_00;
  undefined2 uVar7;
  undefined3 uVar6;
  undefined3 extraout_var_01;
  undefined3 extraout_var_02;
  uint uVar8;
  int iVar9;
  char local_1e;
  char local_1d;
  int *local_1c;
  float local_18;
  int *local_14;
  int *local_10;
  float local_c;
  float local_8;
  float local_4;
  
  local_1c = param_1;
  local_1d = '\x01';
  local_1e = '\x01';
  param_1 = param_2;
  do {
    pvVar4 = FUN_00c695d0(*(void **)this,(float)local_1c,(float)param_1,param_4,param_5,&local_1d,
                          (float *)&local_10,(float *)&local_14,&local_1e,(float *)&param_2,
                          &local_18);
    if (pvVar4 == (void *)0x0) {
      uVar8 = 0x7d;
      if (*(char *)((int)this + 0x71) != '\0') {
        uVar8 = 0x59;
      }
      uVar8 = NeighborhoodVisibility_TestWorldSegment
                        (uVar8,*(void **)this,*(undefined4 *)((int)*(void **)((int)this + 8) + 0x10)
                         ,*(void **)((int)this + 8),(float)local_1c,param_1,param_4,param_5,0.25,
                         0x3f800000,*(uint **)((int)this + 0x50));
      return uVar8;
    }
    uVar2 = Lot_IsCommercialDivingLot((int)pvVar4);
    iVar5 = CONCAT31(extraout_var,uVar2);
    if (local_1d == '\0') {
LAB_00644a18:
      if (local_1e == '\0') {
        bVar3 = FUN_006446e0(this,(float)local_1c,(float)param_1,param_3,param_4,param_5,param_6,
                             pvVar4);
        return CONCAT31(extraout_var_01,bVar3);
      }
      if (local_1d != '\0') goto LAB_00644a53;
      piVar1 = local_1c;
      iVar9 = param_3;
    }
    else {
      uVar8 = 0x7d;
      if (*(char *)((int)this + 0x71) != '\0') {
        uVar8 = 0x59;
      }
      uVar8 = NeighborhoodVisibility_TestWorldSegment
                        (uVar8,*(void **)this,*(undefined4 *)((int)*(void **)((int)this + 8) + 0x10)
                         ,*(void **)((int)this + 8),(float)local_1c,param_1,(float)local_10,
                         (float)local_14,0.25,0x3f800000,*(uint **)((int)this + 0x50));
      if ((char)uVar8 == '\0') goto LAB_00644b2d;
      local_1c = local_10;
      param_1 = local_14;
      if (local_1d == '\0') goto LAB_00644a18;
LAB_00644a53:
      if (local_1e == '\0') {
        bVar3 = FUN_006446e0(this,(float)local_10,(float)local_14,iVar5,param_4,param_5,param_6,
                             pvVar4);
        return CONCAT31(extraout_var_02,bVar3);
      }
      piVar1 = local_10;
      param_1 = local_14;
      iVar9 = iVar5;
    }
    bVar3 = FUN_006446e0(this,(float)piVar1,(float)param_1,iVar9,(float)param_2,local_18,iVar5,
                         pvVar4);
    uVar8 = CONCAT31(extraout_var_00,bVar3);
    if (!bVar3) {
LAB_00644b2d:
      return uVar8 & 0xffffff00;
    }
    uVar7 = (undefined2)((uint3)extraout_var_00 >> 8);
    uVar6 = CONCAT21(uVar7,(param_4 == (float)param_2) << 6 |
                           (NAN(param_4) || NAN((float)param_2)) << 2 | 2U |
                           param_4 < (float)param_2);
    if (param_4 == (float)param_2) {
      uVar6 = CONCAT21(uVar7,(param_5 == local_18) << 6 | (NAN(param_5) || NAN(local_18)) << 2 | 2U
                             | param_5 < local_18);
      if (param_5 == local_18) break;
    }
    local_c = param_5 - local_18;
    local_8 = param_4 - (float)param_2;
    local_4 = 0.01 / SQRT(local_8 * local_8 + local_c * local_c);
    param_1 = (int *)(local_c * local_4 + local_18);
    local_1c = (int *)(local_8 * local_4 + (float)param_2);
  } while (local_1e != '\0');
  return CONCAT31(uVar6,1);
}

