/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectGetPlacementMode. Export ordinal(s):
   1524. Entry VA: 0x1057b000. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C39. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint World_ObjectGetPlacementMode(void)

{
  int iVar1;
  void *pvVar2;
  uint uVar3;
  
                    /* 0x57b000  1524  World_ObjectGetPlacementMode */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_1072abb0(iVar1);
    uVar3 = FUN_100c7d20(pvVar2);
    return uVar3;
  }
  return 0;
}

