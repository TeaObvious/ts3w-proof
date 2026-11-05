/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SetBodyShapeInGameObjectImpl. Export
   ordinal(s): 135. Entry VA: 0x103a3af0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600042D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
CASUtils_SetBodyShapeInGameObjectImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  void *pvVar2;
  
                    /* 0x3a3af0  135  CASUtils_SetBodyShapeInGameObjectImpl */
  iVar1 = FUN_1072a1a0();
  pvVar2 = (void *)FUN_1072abb0(iVar1);
  if (pvVar2 != (void *)0x0) {
    pvVar2 = (void *)FUN_10726da0(pvVar2,DAT_10c8d93c);
    if (pvVar2 != (void *)0x0) {
      FUN_10741d80(pvVar2,param_1,param_2,param_3,param_4);
    }
  }
  return;
}

