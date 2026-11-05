/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161c90 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_RemovePrivateFootprint [assembly=ScriptCore
   token=0x06001068; scriptHandle: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_RouteManager__RouteManager_RemovePrivateFootprint(void)

{
  int iVar1;
  undefined4 *puVar2;
  int *this;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 *puStack_4;
  
  iVar1 = GetGlobalInterfacePointer_11D5BBC();
  this = (int *)0x0;
  if (iVar1 != 0) {
    iVar1 = FUN_00937570();
    this = (int *)0x0;
    if (iVar1 != 0) {
      puVar2 = (undefined4 *)FUN_00937f80(iVar1);
      if (puVar2 != (undefined4 *)0x0) {
        LOCK();
        puVar2[1] = puVar2[1] + 1;
        UNLOCK();
      }
      puStack_4 = puVar2;
      this = (int *)thunk_FUN_00835d40();
      if (puVar2 != (undefined4 *)0x0) {
        if (this != (int *)0x0) {
          uVar3 = FUN_00829ac0(this,puVar2,'\x01');
          uVar4 = FUN_007462e0((int *)&puStack_4);
          return CONCAT31((int3)((uint)uVar4 >> 8),(char)uVar3);
        }
        this = puVar2 + 1;
        LOCK();
        iVar1 = *this;
        *this = *this + -1;
        UNLOCK();
        if (iVar1 == 1) {
          LOCK();
          *this = 1;
          UNLOCK();
          this = (int *)(**(code **)*puVar2)(1);
        }
      }
    }
  }
  return (uint)this & 0xffffff00;
}

