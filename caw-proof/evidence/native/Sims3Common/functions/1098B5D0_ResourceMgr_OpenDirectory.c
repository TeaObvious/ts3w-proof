/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_OpenDirectory. Export ordinal(s):
   2035. Entry VA: 0x1098b5d0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000893. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 ***** __cdecl ResourceMgr_OpenDirectory(uint param_1,char *param_2,uint param_3)

{
  int *****pppppiVar1;
  char cVar2;
  int *piVar3;
  undefined4 *****pppppuVar4;
  uint uVar5;
  wchar_t *pwVar6;
  int iVar7;
  undefined4 *this;
  int *piVar8;
  int *piVar9;
  void *pvVar10;
  undefined4 uVar11;
  int *unaff_EBP;
  undefined4 *****unaff_ESI;
  uint unaff_retaddr;
  undefined4 *****local_30;
  int *local_2c;
  undefined4 *puStack_28;
  int iStack_24;
  int ****local_20;
  int ****ppppiStack_1c;
  int *piStack_18;
  undefined4 ********local_14;
  undefined4 ********local_10;
  undefined4 local_c;
  uint local_8;
  wchar_t *local_4;
  
                    /* 0x98b5d0  2035  ResourceMgr_OpenDirectory */
  piVar3 = (int *)FUN_108e50d0();
  if (piVar3 == (int *)0x0) {
    return (undefined4 *****)0xffffffff;
  }
  local_2c = piVar3;
  pppppuVar4 = (undefined4 *****)ResourceMgr_HashString(param_2);
  pvVar10 = DAT_10cb8078;
  local_30 = pppppuVar4;
  FUN_106a8410(DAT_10cb8078,&local_20,(uint *)&local_30);
  if ((int *****)local_20 !=
      *(int ******)(*(int *)((int)pvVar10 + 4) + *(int *)((int)pvVar10 + 8) * 4)) {
    uVar5 = (*(code *)(*local_20[1])[8])();
    if ((param_3 & ~uVar5) != 0) {
      return (undefined4 *****)0xffffffff;
    }
    return pppppuVar4;
  }
  local_c = FUN_10722830();
  local_8 = 0;
  local_4 = L"ResourceSystem/ManagerWrap";
  local_14 = &local_14;
  local_10 = &local_14;
  (**(code **)(*piVar3 + 0x48))();
  if ((int *****)ppppiStack_1c != &ppppiStack_1c) {
    do {
      pppppuVar4 = (undefined4 *****)ppppiStack_1c[2];
      pwVar6 = (wchar_t *)(*(code *)(*pppppuVar4)[10])();
      iVar7 = _wcsicmp(local_4,pwVar6);
      if (iVar7 == 0) {
        uVar5 = (*(code *)(*pppppuVar4)[8])();
        if ((param_1 & ~uVar5) == 0) {
          (*(code *)*pppppuVar4[1])();
          local_30 = pppppuVar4;
          FUN_105c6f80(DAT_10cb8078,&puStack_28,(uint *)&stack0xffffffcc);
          FUN_10a8e530(&ppppiStack_1c);
          return unaff_ESI;
        }
        goto LAB_1098b8ad;
      }
      ppppiStack_1c = (int ****)*ppppiStack_1c;
    } while ((int *****)ppppiStack_1c != &ppppiStack_1c);
  }
  this = FUN_10919060(0xb0,"ResMan",0);
  if (this == (undefined4 *)0x0) {
    piVar8 = (int *)0x0;
  }
  else {
    piVar8 = FUN_108db560(this,(short *)0x0,0);
    if (piVar8 != (int *)0x0) {
      (**(code **)piVar8[1])();
    }
  }
  piVar9 = (int *)FUN_105219c0();
  if ((((piVar9 != (int *)0x0) &&
       (pvVar10 = (void *)(**(code **)(*piVar9 + 0x2c))(), pvVar10 != (void *)0x0)) &&
      (*(int *)((int)pvVar10 + 0xc) != 0)) &&
     (FUN_103255b0(pvVar10,(int *)&puStack_28),
     puStack_28 != *(undefined4 **)(*(int *)((int)pvVar10 + 4) + *(int *)((int)pvVar10 + 8) * 4))) {
    do {
      (**(code **)(*piVar8 + 0x50))(*puStack_28,puStack_28[1]);
      for (puStack_28 = (undefined4 *)puStack_28[2]; puStack_28 == (undefined4 *)0x0;
          puStack_28 = (undefined4 *)*puStack_28) {
        puStack_28 = (undefined4 *)(iStack_24 + 4);
        iStack_24 = iStack_24 + 4;
      }
      piVar3 = unaff_EBP;
    } while (puStack_28 !=
             *(undefined4 **)(*(int *)((int)pvVar10 + 4) + *(int *)((int)pvVar10 + 8) * 4));
  }
  pwVar6 = local_4;
  cVar2 = (**(code **)(*piVar8 + 0x2c))(local_4);
  if (cVar2 == '\0') {
    (**(code **)(piVar8[1] + 4))();
    if ((int *****)local_20 != &local_20) {
      do {
        pppppiVar1 = (int *****)*local_20;
        (**(code **)(*piStack_18 + 0xc))(local_20,0xc);
        local_20 = (int ****)pppppiVar1;
      } while (pppppiVar1 != &local_20);
    }
    return (undefined4 *****)0xffffffff;
  }
  cVar2 = (**(code **)(*piVar8 + 4))();
  if (cVar2 == '\0') {
    (**(code **)(piVar8[1] + 4))();
    if ((int *****)local_20 != &local_20) {
      do {
        pppppiVar1 = (int *****)*local_20;
        (**(code **)(*piStack_18 + 0xc))(local_20,0xc);
        local_20 = (int ****)pppppiVar1;
      } while (pppppiVar1 != &local_20);
    }
    return (undefined4 *****)0xffffffff;
  }
  uVar11 = 3;
  if ((unaff_retaddr & 2) != 0) {
    uVar11 = 2;
  }
  cVar2 = (**(code **)(*piVar8 + 0x18))(unaff_retaddr,uVar11,0);
  if (cVar2 != '\0') {
    if ((((local_8 & 1) != 0) && (piVar9 = (int *)FUN_105219c0(), piVar9 != (int *)0x0)) &&
       (pvVar10 = (void *)(**(code **)(*piVar9 + 0x20))(pwVar6), pvVar10 != (void *)0x0)) {
      FUN_108da9e0(pvVar10,(uint)piVar8,1);
    }
    FUN_105c6f80(DAT_10cb8078,(undefined4 *)&stack0xffffffbc,(uint *)&stack0xffffffc8);
    (**(code **)(*piVar3 + 0x34))(1,piVar8,local_4);
    FUN_10a8e530((undefined4 *)&stack0xffffffc8);
    return &local_14;
  }
  (**(code **)(*piVar8 + 8))();
  (**(code **)(piVar8[1] + 4))();
LAB_1098b8ad:
  FUN_10a8e530(&ppppiStack_1c);
  return (undefined4 *****)0xffffffff;
}

