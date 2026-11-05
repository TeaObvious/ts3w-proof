/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eb30 (original PC 1.67 TS3W.exe).
   ScriptCore.Animation::Animation_CreateTimeController [assembly=ScriptCore token=0x06000DB9;
   objId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Animation__Animation_CreateTimeController(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *this_00;
  undefined4 *puVar3;
  
  iVar2 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    iVar2 = FUN_00934260(this,DAT_011dd484);
    if (iVar2 != 0) {
      this_00 = (void *)FUN_004e4500(0x48,"Animation/TimeController",0);
      if (this_00 == (void *)0x0) {
        puVar3 = (undefined4 *)0x0;
      }
      else {
        puVar3 = FUN_0056c9a0(this_00,iVar2 + 8);
        if (puVar3 != (undefined4 *)0x0) {
          puVar3[1] = puVar3[1] + 1;
        }
      }
      (**(code **)(*(int *)(iVar2 + 8) + 0x14))(15000,puVar3,2,DAT_00fab218,DAT_00fab218,1,0,0,0);
      if ((puVar3 != (undefined4 *)0x0) &&
         (iVar2 = puVar3[1], puVar3[1] = iVar2 + -1, iVar2 + -1 == 0)) {
        puVar3[1] = 1;
        (**(code **)*puVar3)(1);
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

