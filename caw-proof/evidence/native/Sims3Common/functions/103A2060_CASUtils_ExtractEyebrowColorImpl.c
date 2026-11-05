/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_ExtractEyebrowColorImpl. Export
   ordinal(s): 84. Entry VA: 0x103a2060. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000499. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl CASUtils_ExtractEyebrowColorImpl(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 uVar3;
  undefined4 uStack_78;
  undefined1 auStack_6c [4];
  uint uStack_68;
  undefined4 auStack_64 [25];
  
  uStack_78 = 0x103a0aaa;
  piVar1 = (int *)FUN_1055b120();
  uStack_78 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  FUN_103ba880(auStack_64);
  FUN_103bae20(auStack_64,pWVar2);
  FUN_103ba230(auStack_64,(byte *)"Tint Color",&uStack_68,auStack_6c);
  (**(code **)(*piVar1 + 0x84))(&stack0xffffff90);
  uVar3 = 0;
  (**(code **)(*piVar1 + 0x9c))(&uStack_78,&stack0xffffff8c,0,1);
  FUN_103baaa0((undefined4 *)&stack0xffffff84);
  return uVar3;
}

