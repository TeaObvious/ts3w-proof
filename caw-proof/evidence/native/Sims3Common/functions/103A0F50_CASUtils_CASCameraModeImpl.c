/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_CASCameraModeImpl. Export ordinal(s):
   66. Entry VA: 0x103a0f50. Original managed P/Invoke MethodDef(s): ScriptCore:0x060003E5. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtils_CASCameraModeImpl(char param_1)

{
  void *pvVar1;
  int iVar2;
  
  pvVar1 = (void *)FUN_104de3a0();
  if (pvVar1 != (void *)0x0) {
    iVar2 = (-(uint)(param_1 != '\0') & 0xf) + 1;
    FUN_104de470(pvVar1,iVar2,0x7ffff000);
    *(char *)((int)pvVar1 + 0x269) = param_1;
    pvVar1 = *(void **)((int)pvVar1 + 0x38);
    if (pvVar1 != (void *)0x0) {
      FUN_104d59a0(pvVar1,param_1 == '\0');
      FUN_104d5990(pvVar1,param_1);
      FUN_104d5970(pvVar1,iVar2,0x7ffff000);
    }
  }
  iVar2 = FUN_1075c630();
  pvVar1 = (void *)FUN_10937a80(iVar2);
  if (pvVar1 != (void *)0x0) {
    if (param_1 != '\0') {
      if (*(int *)((int)pvVar1 + 0x90) != 4) {
        DAT_10c24824 = *(int *)((int)pvVar1 + 0x90);
      }
      FUN_1075d9b0(pvVar1,4,'\0');
      FUN_104df860();
      return;
    }
    FUN_1075d9b0(pvVar1,DAT_10c24824,'\0');
  }
  FUN_104df860();
  return;
}

