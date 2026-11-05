/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectSetSculptureType. Export ordinal(s):
   1556. Entry VA: 0x105817d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C23. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl World_ObjectSetSculptureType(undefined4 param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  void *pvVar2;
  
                    /* 0x5817d0  1556  World_ObjectSetSculptureType */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_1072abb0(iVar1);
    if (pvVar2 != (void *)0x0) {
      pvVar2 = (void *)FUN_10726da0(pvVar2,DAT_10c8dae8);
      if (pvVar2 != (void *)0x0) {
        FUN_10750b00(pvVar2,param_3);
      }
    }
  }
  return;
}

