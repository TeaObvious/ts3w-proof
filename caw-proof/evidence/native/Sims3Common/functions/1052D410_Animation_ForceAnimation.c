/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_ForceAnimation. Export ordinal(s): 7.
   Entry VA: 0x1052d410. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000664. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Animation_ForceAnimation(undefined4 param_1,undefined4 param_2,char param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *this_00;
  
                    /* 0x52d410  7  Animation_ForceAnimation */
  iVar2 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    this_00 = (void *)FUN_10726da0(this,DAT_10c80cc4);
    if (this_00 != (void *)0x0) {
      FUN_1072ef20(this_00,param_3);
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

