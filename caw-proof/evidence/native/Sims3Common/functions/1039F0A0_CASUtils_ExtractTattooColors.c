/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_ExtractTattooColors. Export ordinal(s):
   86. Entry VA: 0x1039f0a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600048E. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl CASUtils_ExtractTattooColors(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  undefined4 uStack_7c;
  uint uStack_78;
  undefined4 auStack_74 [4];
  undefined4 auStack_64 [25];
  
                    /* 0x39f0a0  86  CASUtils_ExtractTattooColors */
  piVar1 = (int *)FUN_1055b120();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  iVar5 = 0;
  FUN_103ba880(auStack_64);
  FUN_103bae20(auStack_64,pWVar2);
  uStack_78 = 7;
  uVar4 = 0;
  do {
    FUN_103b9e20(auStack_64,*(byte **)((int)&PTR_s_ColorREnabled_10c27390 + uVar4),&uStack_78,
                 &stack0xffffff83);
    uVar3 = FUN_103f0f80(auStack_64,*(undefined4 *)((int)&PTR_s_Layer_dColorR_10c27380 + uVar4));
    *(undefined4 *)((int)auStack_74 + uVar4) = uVar3;
    uVar4 = uVar4 + 4;
    iVar5 = iVar5 + 1;
  } while (uVar4 < 0x10);
  if (iVar5 != 0) {
    iVar6 = iVar5;
    (**(code **)(*piVar1 + 0x84))(&uStack_7c);
    (**(code **)(*piVar1 + 0x9c))(&stack0xffffff7c,&uStack_7c,0,iVar5);
    FUN_103baaa0(&uStack_7c);
    return iVar6;
  }
  FUN_103baaa0(auStack_64);
  return 0;
}

