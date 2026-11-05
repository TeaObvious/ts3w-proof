/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* Verified PC 1.67 registration table at 0x0115eb70 (original PC 1.67 TS3W.exe).
   ScriptCore.Animation::Animation_HasAnimation [assembly=ScriptCore token=0x06000DC1; objId:
   System.UInt64, track: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_Animation__Animation_HasAnimation(undefined4 param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *this_00;
  int *piVar3;
  int iVar4;
  undefined1 auStack_4344 [4];
  undefined1 auStack_4340 [17212];
  undefined4 uStack_4;
  
  uStack_4 = 0x73abba;
  iVar2 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    this_00 = (void *)FUN_00934260(this,DAT_011dd484);
    if (this_00 != (void *)0x0) {
      piVar3 = (int *)FUN_0093cba0(this_00,param_3);
      if (piVar3 != (int *)0x0) {
        FUN_0054ca40((int)auStack_4340);
        iVar4 = (**(code **)(*piVar3 + 0xc))(auStack_4340);
        FUN_0054ca00((int)auStack_4344);
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

