/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_HasAnimation. Export ordinal(s): 10.
   Entry VA: 0x1052d510. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000668. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl Animation_HasAnimation(undefined4 param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *this_00;
  int *piVar3;
  int iVar4;
  undefined1 auStack_4344 [4];
  undefined1 local_4340 [17212];
  undefined4 uStack_4;
  
                    /* 0x52d510  10  Animation_HasAnimation */
  uStack_4 = 0x1052d51a;
  iVar2 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    this_00 = (void *)FUN_10726da0(this,DAT_10c80cc4);
    if (this_00 != (void *)0x0) {
      piVar3 = (int *)FUN_1072eff0(this_00,param_3);
      if (piVar3 != (int *)0x0) {
        FUN_10349830((uint)local_4340);
        iVar4 = (**(code **)(*piVar3 + 0xc))(local_4340);
        FUN_103497f0((uint)auStack_4344);
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
        return iVar4 != 0;
      }
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
  return false;
}

