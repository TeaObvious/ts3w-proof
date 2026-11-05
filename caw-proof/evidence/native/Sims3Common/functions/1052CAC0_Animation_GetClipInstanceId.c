/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_GetClipInstanceId. Export ordinal(s):
   8. Entry VA: 0x1052cac0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000669. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

ulonglong __cdecl Animation_GetClipInstanceId(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  ulonglong uVar3;
  undefined4 auStack_104 [65];
  
                    /* 0x52cac0  8  Animation_GetClipInstanceId */
  auStack_104[0] = 0x1052cacb;
  piVar1 = (int *)FUN_1055b120();
  auStack_104[0] = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  FUN_109278a0((LPWSTR)auStack_104,0x100,pWVar2,0xffffffff);
  uVar3 = FUN_10376d90((char *)auStack_104,(uint *)0x0);
  return uVar3;
}

