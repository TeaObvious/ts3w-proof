/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetWallCutoutStateForObjectImpl. Export
   ordinal(s): 1606. Entry VA: 0x1057b7a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CD6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
World_SetWallCutoutStateForObjectImpl(undefined4 param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  void *pvVar2;
  
                    /* 0x57b7a0  1606  World_SetWallCutoutStateForObjectImpl */
  iVar1 = FUN_1072a1a0();
  pvVar2 = (void *)FUN_1072abb0(iVar1);
  if (pvVar2 != (void *)0x0) {
    if (param_3 != '\0') {
      FUN_100d2ea0(pvVar2);
      return;
    }
    FUN_100d3360(pvVar2);
  }
  return;
}

