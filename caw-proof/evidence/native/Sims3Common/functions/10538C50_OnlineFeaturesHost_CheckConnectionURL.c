/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_CheckConnectionURL. Export
   ordinal(s): 493. Entry VA: 0x10538c50. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000592. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl OnlineFeaturesHost_CheckConnectionURL(undefined4 param_1)

{
  undefined1 uVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  undefined4 *puVar4;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  undefined3 uVar5;
  int iVar6;
  undefined *unaff_EBX;
  undefined *puVar7;
  undefined *puVar8;
  char *apcStack_14 [2];
  int iStack_c;
  
  piVar2 = (int *)FUN_1055b120();
  if (DAT_10c788dc == 0) {
    iVar6 = 0;
  }
  else {
    iVar6 = DAT_10c788dc + -8;
  }
  if ((piVar2 != (int *)0x0) && (iVar6 != 0)) {
    puVar7 = &DAT_10ca8245;
    apcStack_14[0] = "Services/OnlineFeaturesHost";
    pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(param_1);
    puVar4 = FUN_10926f20(apcStack_14,pWVar3,0xffffffff,(char *)0x0);
    puVar8 = &_Dst_10ca8244;
    if (puVar4 != (undefined4 *)&stack0xffffffdc) {
      FUN_1000e8a0(&stack0xffffffdc,(void *)*puVar4,(undefined1 *)puVar4[1]);
      puVar7 = &_Dst_10ca8244;
      puVar8 = unaff_EBX;
    }
    if ((1 < iStack_c - (int)apcStack_14[0]) && (apcStack_14[0] != (char *)0x0)) {
      FUN_10918e90((int)apcStack_14[0]);
    }
    uVar1 = FUN_10679980(iVar6);
    uVar5 = extraout_var;
    if ((1 < (int)puVar7 - (int)puVar8) && (puVar8 != (undefined *)0x0)) {
      FUN_10918e90((int)puVar8);
      uVar5 = extraout_var_00;
    }
    return CONCAT31(uVar5,uVar1);
  }
  return (uint)piVar2 & 0xffffff00;
}

