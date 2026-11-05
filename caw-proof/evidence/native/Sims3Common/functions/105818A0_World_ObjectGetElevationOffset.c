/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectGetElevationOffset. Export
   ordinal(s): 1520. Entry VA: 0x105818a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C29. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 World_ObjectGetElevationOffset(void)

{
  int iVar1;
  void *this;
  
                    /* 0x5818a0  1520  World_ObjectGetElevationOffset */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    this = (void *)FUN_1072abb0(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_10726da0(this,DAT_10c70408);
      if (iVar1 != 0) {
        return (float10)*(float *)(iVar1 + 0x24);
      }
    }
  }
  return (float10)0.0;
}

