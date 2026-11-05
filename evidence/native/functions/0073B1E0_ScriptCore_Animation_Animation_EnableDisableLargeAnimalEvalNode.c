/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eba8 (original PC 1.67 TS3W.exe).
   ScriptCore.Animation::Animation_EnableDisableLargeAnimalEvalNode [assembly=ScriptCore
   token=0x06000DC8; id: System.UInt64, bEnable: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Animation__Animation_EnableDisableLargeAnimalEvalNode
               (undefined4 param_1,undefined4 param_2,char param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  
  iVar2 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    iVar2 = FUN_00934260(this,DAT_011dd484);
    if (iVar2 != 0) {
      if (param_3 == '\0') {
        *(uint *)(iVar2 + 0x2c) = *(uint *)(iVar2 + 0x2c) | 0x40000;
      }
      else {
        *(uint *)(iVar2 + 0x2c) = *(uint *)(iVar2 + 0x2c) & 0xfffbffff;
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
  return;
}

