/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_IsLiveDraggingEnabledImpl. Export
   ordinal(s): 1420. Entry VA: 0x10577870. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CBC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

byte World_IsLiveDraggingEnabledImpl(void)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  
                    /* 0x577870  1420  World_IsLiveDraggingEnabledImpl */
  iVar2 = FUN_1072a1a0();
  if (iVar2 != 0) {
    uVar3 = FUN_1072abb0(iVar2);
    if (uVar3 != 0) {
      iVar2 = FUN_102656d0(DAT_10c70534,(uint *)(uVar3 + 0x18));
      if (iVar2 != 0) {
        bVar1 = FUN_1026e390(iVar2);
        return bVar1;
      }
    }
  }
  return 0;
}

