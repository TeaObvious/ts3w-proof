/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x102c0755) */
/* WARNING: Removing unreachable block (ram,0x102c079d) */
/* CAW 1.22.10 Sims3Common.dll PE export identity:
   UserToolUtils_GetPresetIdFromProductAndStringImpl. Export ordinal(s): 1200. Entry VA: 0x102c1100.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A84. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

undefined4 __cdecl UserToolUtils_GetPresetIdFromProductAndStringImpl(uint param_1,int param_2)

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
  
  piVar4 = (int *)FUN_1055b120();
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
  piVar5 = (int *)FUN_1055b120();
  if (piVar5 == (int *)0x0) {
    return 0xffffffff;
  }
  psVar6 = (short *)(**(code **)(*piVar5 + 0x58))(param_2);
  if (psVar6 == (short *)0x0) {
    return 0xffffffff;
  }
  FUN_1001e630(&stack0xffffff70,(undefined4 *)&stack0xffffff6c);
  FUN_1006fb50(&stack0xffffff70,psVar6);
  if ((unaff_EBP - (int)unaff_ESI >> 1 != 0) && (*unaff_ESI != L'<')) {
    uStack_7c = 0;
    uStack_78 = 0;
    iStack_74 = 0;
    uStack_70 = 0;
    FUN_100d21b0((int)&uStack_7c,(undefined4 *)&stack0xffffff70);
    if (iStack_74 == 0x44ae110) {
      piVar5 = (int *)FUN_108e50d0();
      uVar12 = 0;
      uVar11 = 0;
      uVar10 = 0;
      iVar1 = *piVar5;
      uVar9 = 0;
      piVar5 = FUN_10323e50((int *)&stack0xffffff6c);
      cVar3 = (**(code **)(iVar1 + 0xc))(&uStack_7c,piVar5,uVar9,uVar10,uVar11,uVar12);
      if (cVar3 == '\0') goto LAB_102c090a;
      puVar7 = (undefined4 *)FUN_100226a0((int *)&stack0xffffff6c);
      FUN_1016b7e0(&piStack_80,puVar7);
      if (piStack_80 == (int *)0x0) goto LAB_102c090a;
      FUN_103baae0(piStack_80,(undefined4 *)&stack0xffffff70);
      (**(code **)(*piStack_80 + 4))();
    }
  }
  FUN_103ba880(auStack_6c);
  cVar3 = FUN_103bae20(auStack_6c,unaff_ESI);
  if (cVar3 != '\0') {
    uVar2 = piVar4[4];
    if (uVar2 < 0x316c78f3) {
      if (uVar2 == 0x316c78f2) {
        pvVar8 = (void *)FUN_100f8790(piVar4);
        if (pvVar8 != (void *)0x0) {
          uVar9 = FUN_102bf7c0(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
          goto LAB_102c08de;
        }
      }
      else if (uVar2 == 0x418fe2a) {
        pvVar8 = (void *)FUN_102bd510(piVar4);
        if (pvVar8 != (void *)0x0) {
          uVar9 = FUN_102bf4e0(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
          goto LAB_102c08de;
        }
      }
      else if (uVar2 == 0x49ca4cd) {
        pvVar8 = (void *)FUN_100f8770(piVar4);
        if (pvVar8 != (void *)0x0) {
          uVar9 = FUN_102bf650(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
          goto LAB_102c08de;
        }
      }
      else if ((uVar2 == 0x4c58103) &&
              (pvVar8 = (void *)FUN_102bd530(piVar4), pvVar8 != (void *)0x0)) {
        uVar9 = FUN_102bf930(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
        goto LAB_102c08de;
      }
    }
    else if (uVar2 == 0x319e4f1d) {
      pvVar8 = (void *)FUN_102bd4d0(piVar4);
      if (pvVar8 != (void *)0x0) {
        uVar9 = FUN_102bf200(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
        goto LAB_102c08de;
      }
    }
    else if ((uVar2 == 0x515ca4cd) && (pvVar8 = (void *)FUN_102bd4f0(piVar4), pvVar8 != (void *)0x0)
            ) {
      uVar9 = FUN_102bf370(pvVar8,(undefined4 *)&stack0xffffff70,unaff_retaddr);
LAB_102c08de:
      FUN_103baaa0(auStack_6c);
      FUN_1001f4e0((int *)&stack0xffffff70);
      return uVar9;
    }
  }
  FUN_103baaa0(auStack_6c);
LAB_102c090a:
  FUN_1001f4e0((int *)&stack0xffffff70);
  return 0xffffffff;
}

