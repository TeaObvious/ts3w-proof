/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_GetHeightAboveFloor. Export ordinal(s):
   479. Entry VA: 0x105369b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FBC. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

float10 Objects_GetHeightAboveFloor(void)

{
  int iVar1;
  void *this;
  
                    /* 0x5369b0  479  Objects_GetHeightAboveFloor */
  iVar1 = FUN_1072a1a0();
  this = (void *)FUN_1072abb0(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_10726da0(this,DAT_10c70408);
    if (iVar1 != 0) {
      return (float10)*(float *)(iVar1 + 0x24);
    }
  }
  return (float10)0;
}

