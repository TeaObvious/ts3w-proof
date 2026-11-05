/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_StopAllAnimation. Export ordinal(s):
   21. Entry VA: 0x1052d3a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000663. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Animation_StopAllAnimation(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  
                    /* 0x52d3a0  21  Animation_StopAllAnimation */
  iVar2 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    iVar2 = FUN_10726da0(this,DAT_10c80cc4);
    if (iVar2 != 0) {
      (**(code **)(*(int *)(iVar2 + 8) + 0x18))();
    }
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return;
}

