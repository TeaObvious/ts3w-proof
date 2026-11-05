/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67: ECX service receiver, seven stack words,
   RET1C, EAX signed path index or -1. Calls007FC280; if no path and start+50(loop), inserts empty
   path. Unless traverse2 and when multiple paths, prefers paths with no public intermediate state
   except matching destination hash. No paths=-1; singleton or selection1=0; selection2 random;
   selection0 minimum length then random among ties. Gate00588BE0 nonzero suppresses RNG and selects
   index0/all or first shortest; current C# lacks that gate. RNG004FAA30 is a bounded child;
   uniformity/sequence not proved by this caller. */

int __thiscall
SacsPaths_EnumerateFilterAndSelect
          (void *this,void *param_1,uint param_2,uint param_3,int param_4,int param_5,int param_6,
          uint param_7)

{
  int iVar1;
  void *pvVar2;
  char cVar3;
  int *_Dst;
  void *pvVar4;
  int *piVar5;
  int *piVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  size_t _Size;
  uint uVar10;
  bool bVar11;
  int local_54;
  int *local_4c;
  int *local_48;
  int *local_44;
  int local_40;
  int *local_34;
  int local_30;
  int local_2c [6];
  void *local_14;
  int local_10;
  void *local_c;
  int local_8;
  undefined4 local_4;
  
  iVar9 = param_5;
  uVar8 = param_2;
  local_54 = -1;
  SacsPaths_BuildTraversalList(param_2,param_1,param_3,param_5,param_6,param_7);
  if ((((*(int *)((int)param_1 + 0x24) - *(int *)((int)param_1 + 0x14) >> 2) + -1) * 0x10 +
       (*(int *)((int)param_1 + 0x18) - *(int *)((int)param_1 + 0x1c) >> 4) +
       (*(int *)((int)param_1 + 0x10) - *(int *)((int)param_1 + 8) >> 4) == 0) &&
     (*(char *)(uVar8 + 0x50) != '\0')) {
    local_4c = (int *)0x0;
    local_48 = (int *)0x0;
    local_44 = (int *)0x0;
    local_40 = 0x1020224;
    FUN_00982420(&local_4c,(undefined4 *)0x0,&param_2);
    pvVar2 = *(void **)((int)param_1 + 0x18);
    if ((int)pvVar2 + 0x10 == *(int *)((int)param_1 + 0x20)) {
      FUN_007fa820(param_1,(int *)&local_4c);
    }
    else {
      *(int *)((int)param_1 + 0x18) = (int)pvVar2 + 0x10;
      if (pvVar2 != (void *)0x0) {
        FUN_006a2190(pvVar2,(int *)&local_4c);
      }
    }
    if (local_4c != (int *)0x0) {
      Memory_FreeIfNonNull(local_4c);
    }
  }
  if ((iVar9 != 2) &&
     (1 < (uint)(((*(int *)((int)param_1 + 0x24) - *(int *)((int)param_1 + 0x14) >> 2) + -1) * 0x10
                 + (*(int *)((int)param_1 + 0x18) - *(int *)((int)param_1 + 0x1c) >> 4) +
                (*(int *)((int)param_1 + 0x10) - *(int *)((int)param_1 + 8) >> 4)))) {
    local_2c[0] = 0;
    local_2c[1] = 0;
    local_2c[2] = 0;
    local_2c[3] = 0;
    local_2c[4] = 0;
    local_2c[5] = 0;
    local_14 = (void *)0x0;
    local_10 = 0;
    local_c = (void *)0x0;
    local_8 = 0;
    local_4 = 0x1020204;
    FUN_007fa4d0(local_2c,0);
    piVar6 = *(int **)((int)param_1 + 8);
    local_34 = *(int **)((int)param_1 + 0x10);
    local_30 = *(int *)((int)param_1 + 0x14);
    if (piVar6 != *(int **)((int)param_1 + 0x18)) {
      do {
        local_40 = piVar6[3];
        iVar9 = piVar6[1] - *piVar6 >> 2;
        if (iVar9 == 0) {
          _Dst = (int *)0x0;
        }
        else {
          _Dst = (int *)FUN_004e4500(iVar9 * 4,local_40,0);
        }
        local_44 = _Dst + iVar9;
        _Size = piVar6[1] - *piVar6;
        local_4c = _Dst;
        pvVar4 = memmove(_Dst,(void *)*piVar6,_Size);
        pvVar2 = local_14;
        local_48 = (int *)((int)pvVar4 + ((int)_Size >> 2) * 4);
        for (piVar5 = _Dst; piVar5 != local_48; piVar5 = piVar5 + 1) {
          if ((*(char *)(*piVar5 + 0x4f) != '\0') && (*(uint *)(*piVar5 + 0x28) != param_3))
          goto LAB_007fc5d7;
        }
        pvVar4 = (void *)((int)local_14 + 0x10);
        if (pvVar4 == local_c) {
          FUN_007fa820(local_2c,(int *)&local_4c);
        }
        else {
          bVar11 = local_14 != (void *)0x0;
          local_14 = pvVar4;
          if (bVar11) {
            FUN_006a2190(pvVar2,(int *)&local_4c);
          }
        }
LAB_007fc5d7:
        piVar6 = piVar6 + 4;
        if (piVar6 == local_34) {
          piVar6 = *(int **)(local_30 + 4);
          local_30 = local_30 + 4;
          local_34 = piVar6 + 0x40;
        }
        if (_Dst != (int *)0x0) {
          Memory_FreeIfNonNull(_Dst);
        }
      } while (piVar6 != *(int **)((int)param_1 + 0x18));
    }
    if (((local_8 - local_2c[5] >> 2) + -1) * 0x10 + (local_2c[4] - local_2c[2] >> 4) +
        ((int)local_14 - local_10 >> 4) != 0) {
      FUN_007fbe70(param_1,local_2c);
    }
    FUN_007fa7a0(local_2c);
  }
  uVar8 = (*(int *)((int)param_1 + 0x24) - *(int *)((int)param_1 + 0x14) >> 2) * 0x10 +
          (*(int *)((int)param_1 + 0x18) - *(int *)((int)param_1 + 0x1c) >> 4) + -0x10 +
          (*(int *)((int)param_1 + 0x10) - *(int *)((int)param_1 + 8) >> 4);
  if ((int)uVar8 < 1) {
    return -1;
  }
  if ((uVar8 != 1) && (param_4 != 1)) {
    param_7 = uVar8;
    if (param_4 != 2) {
      if (param_4 != 0) {
        return -1;
      }
      iVar9 = 0;
      uVar10 = 0x7fffffff;
      if (0 < (int)uVar8) {
        do {
          piVar6 = (int *)FUN_007fa330(param_1,iVar9);
          if ((uint)(piVar6[1] - *piVar6 >> 2) < uVar10) {
            piVar6 = (int *)FUN_007fa330(param_1,iVar9);
            uVar10 = piVar6[1] - *piVar6 >> 2;
            local_54 = iVar9;
          }
          iVar9 = iVar9 + 1;
        } while (iVar9 < (int)uVar8);
      }
      iVar9 = 0;
      param_3 = 0;
      if (0 < (int)uVar8) {
        do {
          iVar1 = iVar9 + (*(int *)((int)param_1 + 8) - *(int *)((int)param_1 + 0xc) >> 4);
          iVar7 = iVar1 + 0x1000000;
          iVar7 = ((int)(iVar7 + (iVar7 >> 0x1f & 0xfU)) >> 4) + -0x100000;
          piVar6 = (int *)((iVar1 + iVar7 * -0x10) * 0x10 +
                          *(int *)(*(int *)((int)param_1 + 0x14) + iVar7 * 4));
          if (piVar6[1] - *piVar6 >> 2 == uVar10) {
            param_3 = param_3 + 1;
          }
          iVar9 = iVar9 + 1;
          uVar8 = param_7;
        } while (iVar9 < (int)param_7);
      }
      param_2 = 0;
      cVar3 = FUN_00588be0();
      if (cVar3 == '\0') {
        param_2 = FUN_004faa30((void *)((int)this + 4),param_3);
      }
      iVar9 = 0;
      if ((int)uVar8 < 1) {
        return local_54;
      }
      do {
        iVar1 = (*(int *)((int)param_1 + 8) - *(int *)((int)param_1 + 0xc) >> 4) + iVar9;
        iVar7 = iVar1 + 0x1000000;
        iVar7 = ((int)(iVar7 + (iVar7 >> 0x1f & 0xfU)) >> 4) + -0x100000;
        piVar6 = (int *)((iVar1 + iVar7 * -0x10) * 0x10 +
                        *(int *)(*(int *)((int)param_1 + 0x14) + iVar7 * 4));
        if (piVar6[1] - *piVar6 >> 2 == uVar10) {
          if ((int)param_2 < 1) {
            return iVar9;
          }
          param_2 = param_2 - 1;
        }
        iVar9 = iVar9 + 1;
      } while (iVar9 < (int)param_7);
      return local_54;
    }
    cVar3 = FUN_00588be0();
    if (cVar3 == '\0') {
      iVar9 = FUN_004faa30((void *)((int)this + 4),uVar8);
      return iVar9;
    }
  }
  return 0;
}

