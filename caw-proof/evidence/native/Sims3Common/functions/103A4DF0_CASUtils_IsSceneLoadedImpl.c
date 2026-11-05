/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x103a48f6) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_IsSceneLoadedImpl. Export ordinal(s):
   117. Entry VA: 0x103a4df0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000433. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl CASUtils_IsSceneLoadedImpl(uint param_1)

{
  int *piVar1;
  void *pvVar2;
  undefined4 uVar3;
  bool bVar4;
  
  bVar4 = true;
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)FUN_1055b120();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if ((piVar1 != (int *)0x0) &&
       (pvVar2 = (void *)(**(code **)(*piVar1 + 0xc))(0x39a436f), pvVar2 != (void *)0x0)) {
      FUN_1055b120();
      pvVar2 = (void *)FUN_105dc1e0(pvVar2,'\x01');
      if (pvVar2 != (void *)0x0) {
        uVar3 = FUN_104e9780(pvVar2,0xffffffff,'\0',(int *)0x0,0);
        bVar4 = (char)uVar3 == '\0';
      }
    }
  }
  return bVar4;
}

