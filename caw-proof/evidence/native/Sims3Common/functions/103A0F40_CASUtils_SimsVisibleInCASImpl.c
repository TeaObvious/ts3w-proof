/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimsVisibleInCASImpl. Export ordinal(s):
   246. Entry VA: 0x103a0f40. Original managed P/Invoke MethodDef(s): ScriptCore:0x060003E4. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtils_SimsVisibleInCASImpl(char param_1)

{
  void *pvVar1;
  undefined4 uVar2;
  
  pvVar1 = (void *)FUN_104de3a0();
  if (pvVar1 != (void *)0x0) {
    uVar2 = 0x10;
    if (param_1 == '\0') {
      uVar2 = 1;
    }
    FUN_104de470(pvVar1,uVar2,0x7ffff000);
    pvVar1 = *(void **)((int)pvVar1 + 0x38);
    if (pvVar1 != (void *)0x0) {
      FUN_104d59a0(pvVar1,param_1 == '\0');
      FUN_104d5990(pvVar1,param_1);
      FUN_104d5970(pvVar1,uVar2,0x7ffff000);
    }
  }
  return;
}

