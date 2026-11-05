/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_StopRandomClipController. Export
   ordinal(s): 22. Entry VA: 0x1052d480. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000666. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
Animation_StopRandomClipController(undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *this_00;
  
                    /* 0x52d480  22  Animation_StopRandomClipController */
  iVar2 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    this_00 = (void *)FUN_10726da0(this,DAT_10c80cc4);
    if (((this_00 != (void *)0x0) && (iVar2 = FUN_1072ee10(this_00,param_3,param_4), iVar2 != 0)) &&
       (iVar2 = (**(code **)(*(int *)(iVar2 + 8) + 4))(0x6c12d61), iVar2 != 0)) {
      FUN_10369680(iVar2);
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

