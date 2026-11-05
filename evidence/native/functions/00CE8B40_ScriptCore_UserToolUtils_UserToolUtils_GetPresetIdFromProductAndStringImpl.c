/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00ce8c75) */
/* WARNING: Removing unreachable block (ram,0x00ce8cbd) */
/* Verified PC 1.67 registration table at 0x01189e28 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_GetPresetIdFromProductAndStringImpl [assembly=ScriptCore
   token=0x06000BED; productHandle: System.UInt32, presetStr: System.String, bAllowApproxMatch:
   System.Boolean; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_UserToolUtils__UserToolUtils_GetPresetIdFromProductAndStringImpl
          (uint param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  char cVar3;
  int *piVar4;
  int *piVar5;
  short *psVar6;
  undefined4 *puVar7;
  void *pvVar8;
  int unaff_EBP;
  LPCWSTR unaff_ESI;
  char unaff_retaddr;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  int *piStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  int iStack_74;
  undefined4 uStack_70;
  undefined4 auStack_6c [27];
  
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar4 == (int *)0x0) {
    return 0xffffffff;
  }
  if ((param_1 & 0xff000000) != 0x45000000) {
    return 0xffffffff;
  }
  if (param_2 == 0) {
    return 0xffffffff;
  }
  piVar4 = (int *)(**(code **)(*piVar4 + 0xcc))(param_1);
  if (piVar4 == (int *)0x0) {
    return 0xffffffff;
  }
  piVar4 = (int *)(**(code **)(*piVar4 + 0xc))(0xb14a3b07);
  if (piVar4 == (int *)0x0) {
    return 0xffffffff;
  }
  piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar5 == (int *)0x0) {
    return 0xffffffff;
  }
  psVar6 = (short *)(**(code **)(*piVar5 + 0x58))(param_2);
  if (psVar6 == (short *)0x0) {
    return 0xffffffff;
  }
  FUN_004088f0(&stack0xffffff70,(undefined4 *)&stack0xffffff6c);
  FUN_00408f50(&stack0xffffff70,psVar6);
  if ((unaff_EBP - (int)unaff_ESI >> 1 != 0) && (*unaff_ESI != L'<')) {
    uStack_7c = 0;
    uStack_78 = 0;
    iStack_74 = 0;
    uStack_70 = 0;
    FUN_00b0af70((int)&uStack_7c,(undefined4 *)&stack0xffffff70);
    if (iStack_74 == 0x44ae110) {
      piVar5 = (int *)FUN_004afe80();
      uVar12 = 0;
      uVar11 = 0;
      uVar10 = 0;
      iVar1 = *piVar5;
      uVar9 = 0;
      piVar5 = FUN_0074efa0((int *)&stack0xffffff6c);
      cVar3 = (**(code **)(iVar1 + 0xc))(&uStack_7c,piVar5,uVar9,uVar10,uVar11,uVar12);
      if (cVar3 == '\0') goto LAB_00ce8e2a;
      puVar7 = (undefined4 *)FUN_0078eb10((int *)&stack0xffffff6c);
      FUN_007fd370(&piStack_80,puVar7);
      if (piStack_80 == (int *)0x0) goto LAB_00ce8e2a;
      FUN_005bfd20(piStack_80,(undefined4 *)&stack0xffffff70);
      (**(code **)(*piStack_80 + 4))();
    }
  }
  FUN_005bfac0(auStack_6c);
  cVar3 = FUN_005c0060(auStack_6c,unaff_ESI);
  if (cVar3 != '\0') {
    uVar2 = piVar4[4];
    if (uVar2 < 0x316c78f3) {
      if (uVar2 == 0x316c78f2) {
        pvVar8 = (void *)FUN_00ce5ee0(piVar4);
        if (pvVar8 != (void *)0x0) {
          uVar9 = FUN_00ce7e30(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
          goto LAB_00ce8dfe;
        }
      }
      else if (uVar2 == 0x418fe2a) {
        pvVar8 = (void *)FUN_00b30580(piVar4);
        if (pvVar8 != (void *)0x0) {
          uVar9 = FUN_00ce7b50(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
          goto LAB_00ce8dfe;
        }
      }
      else if (uVar2 == 0x49ca4cd) {
        pvVar8 = (void *)FUN_00ce5ec0(piVar4);
        if (pvVar8 != (void *)0x0) {
          uVar9 = FUN_00ce7cc0(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
          goto LAB_00ce8dfe;
        }
      }
      else if ((uVar2 == 0x4c58103) &&
              (pvVar8 = (void *)FUN_00ce5ea0(piVar4), pvVar8 != (void *)0x0)) {
        uVar9 = FUN_00ce7fa0(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
        goto LAB_00ce8dfe;
      }
    }
    else if (uVar2 == 0x319e4f1d) {
      pvVar8 = (void *)FUN_007ddb20(piVar4);
      if (pvVar8 != (void *)0x0) {
        uVar9 = FUN_00ce7870(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
        goto LAB_00ce8dfe;
      }
    }
    else if ((uVar2 == 0x515ca4cd) && (pvVar8 = (void *)FUN_00ce5e80(piVar4), pvVar8 != (void *)0x0)
            ) {
      uVar9 = FUN_00ce79e0(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
LAB_00ce8dfe:
      FUN_005bfce0(auStack_6c);
      FUN_004ef8f0((int *)&stack0xffffff70);
      return uVar9;
    }
  }
  FUN_005bfce0(auStack_6c);
LAB_00ce8e2a:
  FUN_004ef8f0((int *)&stack0xffffff70);
  return 0xffffffff;
}

