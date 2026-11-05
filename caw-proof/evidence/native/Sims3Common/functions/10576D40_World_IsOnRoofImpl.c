/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_IsOnRoofImpl. Export ordinal(s): 1423.
   Entry VA: 0x10576d40. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C0F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 World_IsOnRoofImpl(void)

{
  int iVar1;
  void *pvVar2;
  undefined4 uVar3;
  
                    /* 0x576d40  1423  World_IsOnRoofImpl */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_1072abb0(iVar1);
    if (pvVar2 != (void *)0x0) {
      uVar3 = FUN_100c78b0(pvVar2);
      return uVar3;
    }
  }
  return 0;
}

