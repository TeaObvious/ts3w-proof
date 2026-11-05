/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectCanBeMovedUpAndDownOnWall. Export
   ordinal(s): 1467. Entry VA: 0x10578c30. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C3A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 World_ObjectCanBeMovedUpAndDownOnWall(void)

{
  int iVar1;
  void *pvVar2;
  undefined4 uVar3;
  
                    /* 0x578c30  1467  World_ObjectCanBeMovedUpAndDownOnWall */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_1072abb0(iVar1);
    if (pvVar2 != (void *)0x0) {
      iVar1 = FUN_102656d0(DAT_10c70534,(uint *)((int)pvVar2 + 0x18));
      if (iVar1 != 0) {
        uVar3 = FUN_100ca4d0(pvVar2,iVar1);
        return uVar3;
      }
    }
  }
  return 0;
}

