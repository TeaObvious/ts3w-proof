/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_ExtractHairColorImpl. Export ordinal(s):
   85. Entry VA: 0x103a2050. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000498. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl CASUtils_ExtractHairColorImpl(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uStack_84;
  uint uStack_78;
  undefined1 auStack_74 [16];
  undefined4 auStack_64 [25];
  
  uStack_84 = 0x103a09fa;
  piVar1 = (int *)FUN_1055b120();
  uStack_84 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  FUN_103ba880(auStack_64);
  FUN_103bae20(auStack_64,pWVar2);
  iVar3 = 0;
  do {
    FUN_103ba230(auStack_64,*(byte **)((int)&PTR_s_Diffuse_Color_10c24814 + iVar3),&uStack_78,
                 auStack_74 + iVar3);
    iVar3 = iVar3 + 4;
  } while (iVar3 < 0x10);
  (**(code **)(*piVar1 + 0x84))(&stack0xffffff84,4);
  uVar4 = 0;
  (**(code **)(*piVar1 + 0x9c))(&uStack_84,&stack0xffffff84,0,4);
  FUN_103baaa0((undefined4 *)&stack0xffffff84);
  return uVar4;
}

