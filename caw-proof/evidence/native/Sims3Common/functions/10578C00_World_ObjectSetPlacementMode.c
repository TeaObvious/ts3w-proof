/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectSetPlacementMode. Export ordinal(s):
   1554. Entry VA: 0x10578c00. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C38. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl World_ObjectSetPlacementMode(undefined4 param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  void *pvVar2;
  
                    /* 0x578c00  1554  World_ObjectSetPlacementMode */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_1072abb0(iVar1);
    FUN_100c7ce0(pvVar2,param_3);
  }
  return;
}

