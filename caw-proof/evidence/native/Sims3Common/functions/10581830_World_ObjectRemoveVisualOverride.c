/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectRemoveVisualOverride. Export
   ordinal(s): 1531. Entry VA: 0x10581830. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C25. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
World_ObjectRemoveVisualOverride(undefined4 param_1,undefined4 param_2,undefined2 param_3)

{
  int iVar1;
  void *pvVar2;
  
                    /* 0x581830  1531  World_ObjectRemoveVisualOverride */
  iVar1 = FUN_1055b120();
  if (iVar1 != 0) {
    iVar1 = FUN_1072a1a0();
    if (iVar1 != 0) {
      pvVar2 = (void *)FUN_1072abb0(iVar1);
      if (pvVar2 != (void *)0x0) {
        pvVar2 = (void *)FUN_10726da0(pvVar2,DAT_10c8dae8);
        if (pvVar2 != (void *)0x0) {
          FUN_10751220(pvVar2,param_3);
        }
      }
    }
  }
  return;
}

